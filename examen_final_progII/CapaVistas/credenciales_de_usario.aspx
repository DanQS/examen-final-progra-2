<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="credenciales_de_usario.aspx.cs" Inherits="examen_final_progII.CapaVistas.credenciales_de_usario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <label>
               Email del usuario:
            </label>
            <br />
            <asp:TextBox ID="TB_email_usuario" runat="server"></asp:TextBox>
            <br />
            <label>
                Contraseña de ingreso:
            </label>
            <br />
            <asp:TextBox ID="TB_pass_usuario" runat="server"></asp:TextBox>

            <br />
            <asp:Button ID="BT_ingresar" runat="server" Text="Ingresar" OnClick="BT_ingresar_Click" />

            <br />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
