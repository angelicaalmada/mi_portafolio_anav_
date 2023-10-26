using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using mi_portafolio_anav_.Models;

namespace mi_portafolio_anav_.Datos
{
    public class DatosDatos
    {
        public DatosModel ConsultarDatos(int IdDatos)
        {
            var oConsulta = new DatosModel();
            var cn = new Conexion();

            using (var conexion = new SqlConnection(cn.getContext()))
            {
                conexion.Open();
                SqlCommand cmd = new SqlCommand("SP_ObtenerDatos", conexion);
                cmd.Parameters.AddWithValue("IdDatos", IdDatos);
                cmd.CommandType = CommandType.StoredProcedure;
                using (var dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        oConsulta.IdDatos = Convert.ToInt32(dr["IdDatos"]);
                        oConsulta.Nombre = dr["Nombre"].ToString();
                        oConsulta.Carrera = dr["Carrera"].ToString();
                        oConsulta.Descripcion = dr["Descripcion"].ToString();
                        oConsulta.NumeroTel = Convert.ToInt32(dr["NumeroTel"]);
                        oConsulta.CorreoElectronico = dr["CorreoElectronico"].ToString();
                        oConsulta.Direccion = dr["Direccion"].ToString();                      
                    }
                }
            }
            return oConsulta;
        }
    }
}