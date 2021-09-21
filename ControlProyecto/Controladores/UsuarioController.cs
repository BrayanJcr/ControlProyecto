using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ControlProyecto.beans;

namespace ControlProyecto.Controladores
{
    public class UsuarioController : Controller
    {
        // GET: Usuario
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        public ActionResult Verify(Usuario acc)
        {
            return View();
        }
    }
}