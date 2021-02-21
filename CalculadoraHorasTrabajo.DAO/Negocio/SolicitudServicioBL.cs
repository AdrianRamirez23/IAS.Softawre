using CalculadoraHorasTrabajo.DAO.DAO;
using CalculadoraHorasTrabajo.DAO.Maestros;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalculadoraHorasTrabajo.DAO.Negocio
{
    internal class SolicitudServicioBL
    {
        internal void CrearSolicitud(SolicitudServicioModelo Sol)
        {
            new SolicitudServicioDAO().CrearSolicitud(Sol);
        }
        internal void CerrarSolicitud(SolicitudServicioModelo Sol)
        {
            new SolicitudServicioDAO().CerrarSolicitud(Sol);
        }
        internal List<SolicitudServicioModelo> ListaServiciosAgendados()
        {
            return new SolicitudServicioDAO().ListaServiciosAgendados();
        }
        internal ReportesHorasModelo ReporteSemana(SolicitudServicioModelo Sol)
        {
            return new SolicitudServicioDAO().ReporteSemana(Sol);
        }
        internal SolicitudServicioModelo ConsultaServicio(int idSolicitud, string IdTecnico)
        {
            return new SolicitudServicioDAO().ConsultaServicio(idSolicitud, IdTecnico);
        }
    }
}
