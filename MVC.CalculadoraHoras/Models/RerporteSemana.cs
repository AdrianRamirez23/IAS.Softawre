using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC.CalculadoraHoras.Models
{
    public class RerporteSemana
    {
        public int HoraNormales { get; set; }
        public int HoraNocturnas { get; set; }
        public int HoraDominicales { get; set; }
        public int HorasDExtras { get; set; }
        public int HorasNExtras { get; set; }
        public int HorasDomExtras { get; set; }
    }
}