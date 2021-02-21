using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CalculadoraHorasTrabajo.Models
{

    /// <summary>
    /// Clase modelo para el reporte
    /// </summary>
    public class ReporteSemanal
    {
        /// <summary>
        /// Atributo Horas Diurnas
        /// </summary>
        public int HoraNormales { get; set; }
        /// <summary>
        /// Atributo Horas Nocturnas
        /// </summary>
        public int HoraNocturnas { get; set; }
        /// <summary>
        /// Atributo Horas Dominicales
        /// </summary>
        public int HoraDominicales { get; set; }
        /// <summary>
        /// Atributo Horas Dirurnas Extras
        /// </summary>
        public int HorasDExtras { get; set; }
        /// <summary>
        /// Atributo Horas Nocturnas Extras
        /// </summary>
        public int HorasNExtras { get; set; }
        /// <summary>
        /// Atributo Horas Dominicales Extras
        /// </summary>
        public int HorasDomExtras { get; set; }
    }
}