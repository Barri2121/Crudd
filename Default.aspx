<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Crudd._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <div style="font-size:x-large" align="center">Informacion de Empleados</div>
    </div>
    <table style="width:100%;">
        <tr>
            <td style="height: 20px; width: 169px;"></td>
            <td style="height: 20px; width: 145px;"></td>
            <td style="height: 20px; width: 139px;"></td>
            <td style="height: 20px; width: 141px;"></td>
            <td style="height: 20px; width: 140px;"></td>
            <td style="height: 20px; width: 97px;"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 169px;"></td>
            <td style="height: 20px; width: 145px;">ID Empleado</td>
            <td style="height: 20px; width: 139px;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="height: 20px; width: 141px;"></td>
            <td style="height: 20px; width: 140px;"></td>
            <td style="height: 20px; width: 97px;"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 169px;">&nbsp;</td>
            <td style="height: 20px; width: 145px;">DPI</td>
            <td style="height: 20px; width: 139px;">
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
            <td style="height: 20px; width: 141px;">&nbsp;</td>
            <td style="height: 20px; width: 140px;">&nbsp;</td>
            <td style="height: 20px; width: 97px;">&nbsp;</td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 169px; height: 22px;"></td>
            <td style="width: 145px; height: 22px">Nombre Completo</td>
            <td style="width: 139px; height: 22px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="width: 141px; height: 22px"></td>
            <td style="width: 140px; height: 22px"></td>
            <td style="width: 97px; height: 22px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 169px; height: 22px;"></td>
            <td style="height: 22px; width: 145px">Cantidad de Hijos</td>
            <td style="width: 139px; height: 22px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td style="width: 141px; height: 22px">&nbsp; IGGS</td>
            <td style="height: 22px; width: 140px">
                <asp:TextBox ID="TextBox6" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 22px; width: 97px"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 169px">&nbsp;</td>
            <td style="width: 145px">Salario Base</td>
            <td style="width: 139px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td style="width: 141px">&nbsp; IRTRA</td>
            <td style="width: 140px">
                <asp:TextBox ID="TextBox7" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td style="width: 97px">Salario Total</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 169px; height: 22px;"></td>
            <td style="height: 22px; width: 145px">Bono Decreto</td>
            <td style="height: 22px; width: 139px">
                <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0"></asp:TextBox>
            </td>
            <td style="height: 22px; width: 141px">&nbsp; Bono de paternidad</td>
            <td style="height: 22px; width: 140px">
                <asp:TextBox ID="TextBox8" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td style="height: 22px; width: 97px">Salario Liquido</td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox10" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 169px">&nbsp;</td>
            <td style="width: 145px">&nbsp;</td>
            <td style="width: 139px">&nbsp;</td>
            <td style="width: 141px">&nbsp;</td>
            <td style="width: 140px">&nbsp;</td>
            <td style="width: 97px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 169px">&nbsp;</td>
            <td style="width: 145px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Calcular Datos" />
            </td>
            <td style="width: 139px">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Guardar" />
            </td>
            <td style="width: 141px">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Modificar" />
            </td>
            <td style="width: 140px">
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Eliminar" />
            </td>
            <td style="width: 97px">
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Buscar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 169px">&nbsp;</td>
            <td style="width: 145px">&nbsp;</td>
            <td style="width: 139px">&nbsp;</td>
            <td style="width: 141px">&nbsp;</td>
            <td style="width: 140px">&nbsp;</td>
            <td style="width: 97px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 169px">&nbsp;</td>
            <td style="width: 145px">&nbsp;</td>
            <td style="width: 139px">&nbsp;</td>
            <td style="width: 141px">&nbsp;</td>
            <td style="width: 140px">&nbsp;</td>
            <td style="width: 97px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" Width="1009px">
    </asp:GridView>
    <br />


</asp:Content>
