using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalculadoraHorasTrabajo.DAO.Maestros
{
    public class ReportesHorasModelo
    {
        public int HoraNormales { get; set; }
        public int HoraNocturnas { get; set; }  
        public int HoraDominicales { get; set; }     
        public int HorasDExtras { get; set; }
        public int HorasNExtras { get; set; }   
        public int HorasDomExtras { get; set; }
    }
}
