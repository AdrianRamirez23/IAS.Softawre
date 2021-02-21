using CalculadoraHorasTrabajo.DAO.Maestros;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalculadoraHorasTrabajo.DAO.DAO
{
    internal class SolicitudServicioDAO
    {
        private string Conexion = ConfigurationManager.ConnectionStrings["SQLConection"].ConnectionString;
        internal void CrearSolicitud(SolicitudServicioModelo Sol)
        {
            string fecha = ConvertirFecha(Sol.FechaSolicitud.ToString()); 
            try
            {
                using (SqlConnection con = new SqlConnection(Conexion))
                {
                    string sentencia = "exec SolicitudServicios_SP 1,'','"+Sol.DescripcionServicio+"','"+Sol.NombreTecnico+"','"+Sol.IdTecnico+"','"+fecha+"','','','','','','"+Sol.Estado+"'";
                    SqlCommand cmd = new SqlCommand(sentencia, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex )
            {
                throw(ex);
            }
        }
        private string ConvertirFecha(string fecha)
        {
            string[] fechadiv = fecha.Split(' ');
            string[] fechaaniomesdia = fechadiv[0].Split('/');
            string fechafin = fechaaniomesdia[2] + "-" + fechaaniomesdia[1] + "-" + fechaaniomesdia[0];
            return fechafin;
        }

        internal void CerrarSolicitud(SolicitudServicioModelo Sol)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(Conexion))
                {
                    string sentencia = "exec SolicitudServicios_SP 2,'"+Sol.idServicio+"','','','" + Sol.IdTecnico + "','','"+Sol.FechaInicio+"','"+Sol.FechaFin+"','"+Sol.HoraInicio+"','"+Sol.HoraFin+"','','" + Sol.Estado + "'";
                    SqlCommand cmd = new SqlCommand(sentencia, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw (ex);
            }
        }
        internal List<SolicitudServicioModelo> ListaServiciosAgendados()
        {
            try
            {
                List<SolicitudServicioModelo> sols = new List<SolicitudServicioModelo>();
                using (SqlConnection con = new SqlConnection(Conexion))
                {
                    string sentencia = "exec SolicitudServicios_SP 4,'','','','','','','','','','',''";
                    SqlCommand cmd = new SqlCommand(sentencia, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        SolicitudServicioModelo sol = new SolicitudServicioModelo();
                        sol.idServicio = rdr[0] == DBNull.Value ? 0 : rdr.GetInt32(0);
                        sol.IdTecnico = rdr[1] == DBNull.Value ? ""  : rdr.GetString(1);
                        sol.NombreTecnico = rdr[2] == DBNull.Value ? "" : rdr.GetString(2);
                        sol.Estado = rdr[3] == DBNull.Value ? "" : rdr.GetString(3);
                        sol.FechaSolicitud = rdr[4] == DBNull.Value ? Convert.ToDateTime("yyyy-mm-dd") : rdr.GetDateTime(4);
                        sols.Add(sol);
                    }
                    return sols;
                }
            }
            catch (Exception ex)
            {
                throw(ex);
            }
        }
        internal ReportesHorasModelo ReporteSemana(SolicitudServicioModelo Sol)
        {
            try
            {
                ReportesHorasModelo repo = new ReportesHorasModelo();
                using (SqlConnection con = new SqlConnection(Conexion))
                {
                    string sentencia = "exec SolicitudServicios_SP 3,'','','','"+Sol.IdTecnico+"','','','','','','"+Sol.SemanaAño+"',''";
                    SqlCommand cmd = new SqlCommand(sentencia, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                        
                        repo.HoraNormales = rdr[0] == DBNull.Value ? 0 : rdr.GetInt32(0);
                        repo.HoraNocturnas = rdr[1] == DBNull.Value ? 0 : rdr.GetInt32(1);
                        repo.HorasDExtras = rdr[2] == DBNull.Value ? 0 : rdr.GetInt32(2);
                        repo.HorasNExtras = rdr[3] == DBNull.Value ? 0 : rdr.GetInt32(3);
                        repo.HoraDominicales = rdr[4] == DBNull.Value ? 0 : rdr.GetInt32(4);
                        repo.HorasDomExtras = rdr[5] == DBNull.Value ? 0 : rdr.GetInt32(5);
                    }
                    return repo;
                }
            }
            catch (Exception ex)
            {

                throw(ex);
            }
        }
        internal SolicitudServicioModelo ConsultaServicio(int idSolicitud, string IdTecnico)
        {
            try
            {
                SolicitudServicioModelo sol = new SolicitudServicioModelo();
                using (SqlConnection con = new SqlConnection(Conexion))
                {
                    string sentencia = "exec SolicitudServicios_SP 5,'"+idSolicitud+"','','','"+IdTecnico+"','','','','','','',''";
                    SqlCommand cmd = new SqlCommand(sentencia, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    while (rdr.Read())
                    {
                       sol.idServicio=rdr[0]== DBNull.Value ? 0 : rdr.GetInt32(0);
                        sol.DescripcionServicio = rdr[1] == DBNull.Value ? "" : rdr.GetString(1);
                        sol.NombreTecnico = rdr[2] == DBNull.Value ? "" : rdr.GetString(2);
                        sol.IdTecnico = rdr[3] == DBNull.Value ? "" : rdr.GetString(3);
                    }
                    return sol;
                }
            }
            catch (Exception e)
            {
                throw(e);
            }
        }
    }        
}
