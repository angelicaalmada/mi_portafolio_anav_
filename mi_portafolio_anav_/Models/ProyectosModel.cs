using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace mi_portafolio_anav_.Models
{
    public class ProyectosModel
    {
        public int IdProyecto { get; set; }
        public string NombreProyecto { get; set; }
        public string DescripcionProyecto { get; set; }
        public string UsoTecnologias {  get; set; }
        public string imgURL { get; set; }
        public string proyectoURL { get; set; }
    }
}