using MVC.CalculadoraHoras.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;

namespace MVC.CalculadoraHoras.Controllers
{
    public class SolicitudServicioController : Controller
    {
        private static string url = "https://localhost:44394/";
        // GET: SolicitudServicio
        public ActionResult Index()
        {
            try
            {
                string Metodo = "SolicitudServicio/ListaServiciosAgendados";
                var json = new WebClient().DownloadString(url + Metodo);
                dynamic m = JsonConvert.DeserializeObject(json);

                List<SolicitudServicio> Servicios = new List<SolicitudServicio>();

                foreach(var i in m)
                {
                    SolicitudServicio serv = new SolicitudServicio();
                    serv.idServicio = i.idServicio;
                    serv.IdTecnico = i.IdTecnico;
                    serv.NombreTecnico = i.NombreTecnico;
                    serv.Estado = i.Estado;
                    serv.FechaSolicitud = i.FechaSolicitud;
                    Servicios.Add(serv);
                }
                return View(Servicios);
            }
            catch (Exception ex)
            {

                throw(ex);
            }
        }
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(SolicitudServicio Sol)
        {
            if (!ModelState.IsValid)
                return View();
            try {
                string metodo = "SolicitudServicio/CrearSolicitud";
                string Result = null;
                var objson = JsonConvert.SerializeObject(Sol);

                WebRequest request = WebRequest.Create(url + metodo);
                request.Method = "post";
                request.ContentType = "application/json;charset=UTF-8";

                using (var oSW = new StreamWriter(request.GetRequestStream()))
                {
                    oSW.Write(objson);
                    oSW.Flush();
                    oSW.Close();
                }
                WebResponse respon = request.GetResponse();

                using (var oSR = new StreamReader(respon.GetResponseStream()))
                {
                    Result = oSR.ReadToEnd();
                }
               
                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                throw (ex);
            }
        }
        public ActionResult Close(int idServicio, string idTecnico)
        {
            try
            {
                string Metodo = "SolicitudServicio/ConsultaServicio?idSolicitud="+idServicio+ "&IdTecnico="+idTecnico;
                var json = new WebClient().DownloadString(url + Metodo);
                var m = JsonConvert.DeserializeObject<SolicitudServicio>(json);

                SolicitudServicio Sol = new SolicitudServicio();
                Sol.idServicio = m.idServicio;
                Sol.DescripcionServicio = m.DescripcionServicio;
                Sol.NombreTecnico = m.NombreTecnico;
                Sol.IdTecnico = m.IdTecnico;

                return View(Sol);
            }
            catch (Exception e)
            {
                throw(e);
            }
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Close(SolicitudServicio sol)
        {
            if (!ModelState.IsValid)
                return View();
            try
            {
                sol.HoraInicio = sol.HoraInicio + ":00";
                sol.HoraFin = sol.HoraFin + ":00";
                string metodo = "SolicitudServicio/CerrarReporte";
                string Result = null;
                var objson = JsonConvert.SerializeObject(sol);

                WebRequest request = WebRequest.Create(url + metodo);
                request.Method = "post";
                request.ContentType = "application/json;charset=UTF-8";

                using (var oSW = new StreamWriter(request.GetRequestStream()))
                {
                    oSW.Write(objson);
                    oSW.Flush();
                    oSW.Close();
                }
                WebResponse respon = request.GetResponse();

                using (var oSR = new StreamReader(respon.GetResponseStream()))
                {
                    Result = oSR.ReadToEnd();
                }
                return RedirectToAction("Index");
            }
            catch (Exception e)
            {
                throw(e);
            }
        }

        public ActionResult Report(string IdTecnico, string SemanaAnio)
        {
            string Metodo = "SolicitudServicio/ReporteSemana?IdTecnico=" + IdTecnico + "&SemanaAnio=" + Convert.ToInt32(SemanaAnio);
            var json = new WebClient().DownloadString(url + Metodo);
            var m = JsonConvert.DeserializeObject<RerporteSemana>(json);

            RerporteSemana Hor = new RerporteSemana();
            List<RerporteSemana> Hors = new List<RerporteSemana>();
            Hor.HoraNormales = m.HoraNormales;
            Hor.HoraNocturnas = m.HoraNocturnas;
            Hor.HoraDominicales = m.HoraDominicales;
            Hor.HorasDExtras = m.HorasDExtras;
            Hor.HorasNExtras = m.HorasNExtras;
            Hor.HorasDomExtras = m.HorasDomExtras;
            Hors.Add(Hor);
            return View(Hors);
        }
       
    }
}