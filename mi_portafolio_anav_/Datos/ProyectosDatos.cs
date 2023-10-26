using mi_portafolio_anav_.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace mi_portafolio_anav_.Datos
{
    public class ProyectosDatos
    {
        public List<ProyectosModel> ConsultarProyectos(int IdDatos)
        {
            var oConsulta = new List<ProyectosModel>();
            var cn = new Conexion();

            using (var conexion = new SqlConnection(cn.getContext()))
            {
                conexion.Open();
                SqlCommand cmd = new SqlCommand("SP_ConsultarProyecto", conexion);
                cmd.Parameters.AddWithValue("IdDatos", IdDatos);
                cmd.CommandType = CommandType.StoredProcedure;
                using (var dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        ProyectosModel o = new ProyectosModel();
                        o.IdProyecto = Convert.ToInt32(dr["IdProyecto"]);
                        o.NombreProyecto = dr["NombreProyecto"].ToString();
                        o.DescripcionProyecto = dr["DescripcionProyecto"].ToString();
                        o.UsoTecnologias = dr["UsoTecnologias"].ToString(); 
                        o.imgURL = dr["imgURL"].ToString();
                        o.proyectoURL = dr["proyectoURL"].ToString();
                        oConsulta.Add(o);
                    }
                }
            }
            return oConsulta;
        } 
    }
}