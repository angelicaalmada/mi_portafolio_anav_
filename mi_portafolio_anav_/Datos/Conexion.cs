using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;

namespace mi_portafolio_anav_.Datos
{
    public class Conexion
    {
        private string Context = string.Empty;
        public Conexion()
        {

            Context = "Data Source=ANGELICA\\SQLEXPRESS;Initial Catalog=PortafolioAn;Integrated Security=True";
        }

        public string getContext()
        {
            return Context;
        }
    }
}