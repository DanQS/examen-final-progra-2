using examen_final_progII.CapaDatos;
using examen_final_progII.CapaLogica;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace examen_final_progII.CapaVistas
{
    public partial class credenciales_de_usario : System.Web.UI.Page
    {
        protected void BT_ingresar_Click(object sender, EventArgs e)
        {
            Clsvalidacion_usuarios.email_usuario = TB_email_usuario.Text;
            Clsvalidacion_usuarios.pass_usuario = TB_pass_usuario.Text;

            if (Clsvalidacion_usuarios.Comprobacion_login() > 0)
                Response.Redirect("menu_usuario.aspx");
            else Label1.Text = "Usuario o contraseña incorrecta";

        }
    }
}