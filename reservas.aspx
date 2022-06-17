<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/Site1.Master" AutoEventWireup="true" CodeBehind="reservas.aspx.cs" Inherits="Eva3_ChristianPasten.reservas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="estilo/reservas.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="cuerpo" >
        <h3 style="text-align:center">Reservas </h3>
        <asp:Label ID="Label1" runat="server" Text="Nombre: "></asp:Label>
        <asp:TextBox ID="tboxNombre" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Requiere nombre" ControlToValidate="tboxNombre"></asp:RequiredFieldValidator>
        <br />
       
        <asp:Label ID="Label2" runat="server" Text="Nacionalidad: "></asp:Label>
        <asp:DropDownList ID="ddNacionalidad" runat="server" OnSelectedIndexChanged="ddNacionalidad_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Selected="True" Value="0">brasil</asp:ListItem>
            <asp:ListItem Value="1">canada</asp:ListItem>
            <asp:ListItem Value="2">chile</asp:ListItem>
            <asp:ListItem Value="3">españa</asp:ListItem>
            <asp:ListItem Value="4">italia</asp:ListItem>
        </asp:DropDownList>
        <asp:Image ID="ImagePais" width="30px" heigth="30px" runat="server"  />
        
        <br />
        <asp:Label ID="Label3" runat="server" Text="Pasaporte/RUT: "></asp:Label>
        <asp:TextBox ID="tboxRut" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Rut obligatorio" ControlToValidate="tboxRut"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Cantidad dias: "></asp:Label>
        <asp:TextBox TextMode="Number" ID="tboxDias" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Requiere cantidad de dias" ControlToValidate="tboxDias"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Valor minimo 1" ControlToValidate="tboxDias" MinimumValue="1" Type="Integer" MaximumValue="10"></asp:RangeValidator>
        
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Tipo habitacion:"></asp:Label>
        <br />
        <asp:RadioButtonList ID="rbHabitacion" runat="server">
            <asp:ListItem Value="48000" Selected="True">Single ($48.000)</asp:ListItem>
            <asp:ListItem Value="55000">Double ($55.000)</asp:ListItem>
            <asp:ListItem Value="82000">Suite ($82.000)</asp:ListItem>
            <asp:ListItem Value="96000">Gran suite ($96.000)</asp:ListItem>
        </asp:RadioButtonList><br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Servicios opcionales: ($15.000 c/u)"></asp:Label>
        <br />
        <asp:CheckBoxList ID="cboxServicios" runat="server" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
            <asp:ListItem Value="15000">wifi</asp:ListItem>
            <asp:ListItem Value="15000">Lavanderia</asp:ListItem>
            <asp:ListItem Value="15000">Desayuno</asp:ListItem>
            <asp:ListItem Value="15000">Estacionamiento</asp:ListItem>
        </asp:CheckBoxList><br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Servicios seleccionados: "></asp:Label>
        <asp:Label ID="tboxServiciosSeleccionados" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Total servicios: $"></asp:Label>
        <asp:Label ID="lTotalServicios" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label9" runat="server" Text="Total diario: $"></asp:Label>
        <asp:Label ID="lTotalDiario" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Total a pagar: $"></asp:Label>
        <asp:Label ID="lTotal" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" />
    
    
    </div>
</asp:Content>
