using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ControlProyecto.Controladores
{
    public class TableroController : Controller
    {
        // GET: Tablero
        public ActionResult Index()
        {
            return View();
        }
    }
}