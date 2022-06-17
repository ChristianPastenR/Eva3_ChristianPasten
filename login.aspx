<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/Site2.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Eva3_ChristianPasten.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="estilo/login.css" rel="stylesheet" />
    <link href="estilo/Site1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="cuerpo" style="width:50%;">
        <asp:Label ID="Label1" runat="server" Text="Ingreso al sistema"></asp:Label><br />
        <br />
        
        <asp:Label ID="Label2" runat="server" Text="Email "></asp:Label>
        <asp:TextBox ID="tboxEmail" TextMode="Email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Email requerido" ControlToValidate="tboxEmail" ForeColor="#CC0000"></asp:RequiredFieldValidator><br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Clave "></asp:Label>
        <asp:TextBox ID="tboxPass" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" Clave requerida" ControlToValidate="tboxPass" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Repetir clave "></asp:Label>
        <asp:TextBox ID="tboxPass2" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Requiere confirmar clave " ControlToValidate="tboxPass2" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage=" Pass no coinciden" ControlToCompare="tboxPass2" ControlToValidate="tboxPass" ForeColor="#CC0000"></asp:CompareValidator>
        
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" />
        <br />
        <asp:Button ID="btnIngresar" runat="server" Text="ACCEDER" CssClass=" " PostBackUrl="~/reservas.aspx" />


    </div>
</asp:Content>
