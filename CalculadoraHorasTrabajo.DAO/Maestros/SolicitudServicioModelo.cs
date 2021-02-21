using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalculadoraHorasTrabajo.DAO.Maestros
{
    public class SolicitudServicioModelo
    {
        public int idServicio { get; set; }
        public string DescripcionServicio { get; set; }
        public string NombreTecnico { get; set; }
        public string IdTecnico { get; set; }
        public DateTime FechaSolicitud { get; set; }
        public string FechaInicio { get; set; }
        public string FechaFin { get; set; }
        public string HoraInicio { get; set; }
        public string HoraFin { get; set; }
        public int SemanaAño { get; set; }
        public string Estado { get; set; }
    }
}
