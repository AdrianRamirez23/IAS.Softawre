using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CalculadoraHorasTrabajo.Models
{
    /// <summary>
    /// Clase modelo para el proyecto
    /// </summary>
    public class SolicitudServicio
    {
        /// <summary>
        /// Atributo id del servicio
        /// </summary>
        public int idServicio { get; set; }
        /// <summary>
        /// Atributo Descripción del servicio
        /// </summary>
        public string DescripcionServicio { get; set; }
        /// <summary>
        /// Atributo Nombre del técnico asignado al servicio
        /// </summary>
        public string NombreTecnico { get; set; }
        /// <summary>
        /// Atributo para la cc del técnico
        /// </summary>
        public string IdTecnico { get; set; }
        /// <summary>
        /// Atributo fecha en que se crea la solitud
        /// </summary>
        public DateTime FechaSolicitud { get; set; }
        /// <summary>
        /// Atributo Fecha de inicio del servicio
        /// </summary>
        public string FechaInicio { get; set; }
        /// <summary>
        /// Atributo Fecha de finalización del servicio
        /// </summary>
        public string FechaFin { get; set; }
        /// <summary>
        /// Atributo Fecha de inicio del servicio
        /// </summary>
        public string HoraInicio { get; set; }
        /// <summary>
        /// Atributo Fecha de finalización del servicio
        /// </summary>
        public string horaFin { get; set; }
        /// <summary>
        /// Atributo del estado de la solicitud
        /// </summary>
        public int SemanaAño { get; set; }
        /// <summary>
        /// Atributo del estado de la solicitud
        /// </summary>
        public string Estado { get; set; }
    }
}