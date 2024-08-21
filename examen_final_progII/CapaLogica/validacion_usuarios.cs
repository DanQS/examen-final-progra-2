using examen_final_progII.CapaDatos;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace examen_final_progII.CapaLogica
{
    public class Clsvalidacion_usuarios
    {
        public static int Comprobacion_login()
        {
            int retorno = 0;

            string s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString; SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select email_usuario, pass_usuario from credenciales_de_usario where email_usuario = '" + credenciales_de_usario.email_usuario + "'" + "and pass_usuario ='" + credenciales_de_usario.pass_usuario + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                retorno = 1;
            }
            else
            {
                retorno = 0;
            }
            conexion.Close();
            return retorno;
        }
    }
}