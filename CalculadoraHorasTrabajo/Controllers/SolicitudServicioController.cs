using CalculadoraHorasTrabajo.DAO.Maestros;
using CalculadoraHorasTrabajo.DAO.Servicio;
using CalculadoraHorasTrabajo.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace CalculadoraHorasTrabajo.Controllers
{

    ///<summary>
    ///Controlador de la Solicitud de Servicios
    /// </summary>
    [RoutePrefix("SolicitudServicio")]
    public class SolicitudServicioController : ApiController
    {
        //POST: api/SolicitudServicio/CrearSolicitud
        ///<summary>
        ///Crea una nueva solicitud de servicio
        /// </summary>
        [Route("CrearSolicitud")]
        [HttpPost]
        public IHttpActionResult CrearSolicitud(SolicitudServicio Sol)
        {
          if (!ModelState.IsValid)
          {
              return NotFound();
          }
          else
          {
                SolicitudServicioModelo solBack = new SolicitudServicioModelo();
                solBack.DescripcionServicio = Sol.DescripcionServicio;
                solBack.NombreTecnico = Sol.NombreTecnico;
                solBack.IdTecnico = Sol.IdTecnico;
                solBack.FechaSolicitud = Sol.FechaSolicitud;
                solBack.Estado = Sol.Estado;
                new Fachada().CrearSolicitud(solBack);
                return Ok();
          }
        }
        //POST: api/SolicitudServicio/CerrarReporte
        ///<summary>
        ///Cierra reporte por usuario
        /// </summary>
        [Route("CerrarReporte")]
        [HttpPost]
        public IHttpActionResult CerrarReporte(SolicitudServicio Sol)
        {
            if (Convert.ToDateTime(Sol.FechaFin+" "+Sol.horaFin).Ticks<Convert.ToDateTime(Sol.FechaInicio+" "+Sol.HoraInicio).Ticks )
            {
                return NotFound();
            }
            else
            {
                SolicitudServicioModelo solBack = new SolicitudServicioModelo();
                solBack.idServicio = Sol.idServicio;
                solBack.IdTecnico = Sol.IdTecnico;
                solBack.FechaInicio = Sol.FechaInicio;
                solBack.FechaFin = Sol.FechaFin;
                solBack.HoraInicio = Sol.HoraInicio;
                solBack.HoraFin = Sol.horaFin;
                solBack.Estado = Sol.Estado;
                new Fachada().CerrarSolicitud(solBack);
                return Ok();
            }
        }
        //GET: api/SolicitudServicio/ListaServiciosAgendados
        ///<summary>
        ///Lista servicios agendados
        /// </summary>
        [Route("ListaServiciosAgendados")]
        [HttpGet]
        public List<SolicitudServicio> ListaServiciosAgendados()
        {

           List<SolicitudServicioModelo> solBack = new List<SolicitudServicioModelo>();
           List<SolicitudServicio> sol = new List<SolicitudServicio>();

            solBack = new Fachada().ListaServiciosAgendados();

            foreach(SolicitudServicioModelo solB in solBack)
            {
                SolicitudServicio sols = new SolicitudServicio();
                sols.idServicio = solB.idServicio;
                sols.IdTecnico = solB.IdTecnico;
                sols.NombreTecnico = solB.NombreTecnico;
                sols.Estado = solB.Estado;
                sols.FechaSolicitud = solB.FechaSolicitud;
                sol.Add(sols);
            }
            return sol; 
        }
        //GET: api/SolicitudServicio/ReporteSemana
        ///<summary>
        ///Crea el reporte de horas generadas en la semana
        /// </summary>
        [Route("ReporteSemana")]
        [HttpGet]
        public ReporteSemanal ReporteSemana(string IdTecnico, int SemanaAnio)
        {
            
                SolicitudServicioModelo solB = new SolicitudServicioModelo();
                solB.IdTecnico = IdTecnico;
                solB.SemanaAño = SemanaAnio;

                ReportesHorasModelo repBack = new ReportesHorasModelo();
                ReporteSemanal repo = new ReporteSemanal();

                repBack = new Fachada().ReporteSemana(solB);

                repo.HoraNormales = repBack.HoraNormales;
                repo.HoraNocturnas = repBack.HoraNocturnas;
                repo.HoraDominicales = repBack.HoraDominicales;
                repo.HorasDExtras = repBack.HorasDExtras;
                repo.HorasNExtras = repBack.HorasNExtras;
                repo.HorasDomExtras = repBack.HorasDomExtras;

                return repo;
          
        }

        //GET: api/SolicitudServicio/ConsultaServicio
        ///<summary>
        ///Crea el reporte de horas generadas en la semana
        /// </summary>
        [Route("ConsultaServicio")]
        [HttpGet]
        public SolicitudServicio ConsultaServicio(int idSolicitud, string IdTecnico)
        {
            if (string.IsNullOrEmpty(IdTecnico) || idSolicitud == 0)
            {
                BadRequest();
            }
            SolicitudServicioModelo solB = new SolicitudServicioModelo();
            
            solB.IdTecnico = IdTecnico;
            solB.idServicio = idSolicitud;

            SolicitudServicio sol = new SolicitudServicio();

            solB = new Fachada().ConsultaServicio(idSolicitud, IdTecnico);
            sol.idServicio = solB.idServicio;
            sol.DescripcionServicio = solB.DescripcionServicio;
            sol.NombreTecnico = solB.NombreTecnico;
           

            return sol;
        }

    }
}
