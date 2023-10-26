using mi_portafolio_anav_.Datos;
using mi_portafolio_anav_.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mi_portafolio_anav_
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DatosDatos datosDatos = new DatosDatos();
                DatosModel datos = datosDatos.ConsultarDatos(1);
                lblNombre.Text = datos.Nombre;
                lblNombre1.Text = datos.Nombre;
                lblDescripcion.Text = datos.Descripcion;
              

                ProyectosDatos proyectosDatos = new ProyectosDatos();
                List<ProyectosModel> proyectos = proyectosDatos.ConsultarProyectos(1);

                rptProyectos.DataSource = proyectos;
                rptProyectos.DataBind();

            }

        }
    }
}