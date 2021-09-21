using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ControlProyecto.beans
{
    public class Usuario
    {
        public string id { get; set; }
        public string name { get; set; }
        public string Apellidos { get; set; }
        public string Password { get; set; }
        public string cargo { get; set; }
    }
}