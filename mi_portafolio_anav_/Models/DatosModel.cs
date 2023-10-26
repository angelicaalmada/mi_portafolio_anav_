using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace mi_portafolio_anav_.Models
{
    public class DatosModel
    {
        public int IdDatos {  get; set; }
        public string Nombre {  get; set; }
        public string Carrera { get; set; }
        public string Descripcion { get; set; }
        public int NumeroTel {  get; set; }
        public string CorreoElectronico {  get; set; }
        public string Direccion {  get; set; }
    }
}