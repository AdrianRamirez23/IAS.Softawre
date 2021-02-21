using CalculadoraHorasTrabajo.DAO.Maestros;
using CalculadoraHorasTrabajo.DAO.Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalculadoraHorasTrabajo.DAO.Servicio
{
    public class Fachada
    {
        public void CrearSolicitud(SolicitudServicioModelo Sol)
        {
            new SolicitudServicioBL().CrearSolicitud(Sol);
        }
        public void CerrarSolicitud(SolicitudServicioModelo Sol)
        {
            new SolicitudServicioBL().CerrarSolicitud(Sol);
        }
        public List<SolicitudServicioModelo> ListaServiciosAgendados()
        {
            return new SolicitudServicioBL().ListaServiciosAgendados();
        }
        public ReportesHorasModelo ReporteSemana(SolicitudServicioModelo Sol)
        {
            return new SolicitudServicioBL().ReporteSemana(Sol);
        }
        public SolicitudServicioModelo ConsultaServicio(int idSolicitud, string IdTecnico)
        {
            return new SolicitudServicioBL().ConsultaServicio(idSolicitud, IdTecnico);
        }
    }
}
