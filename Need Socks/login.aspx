<%@ Page Title="" Language="C#" MasterPageFile="~/Need Socks.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Need_Socks.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <p><asp:Label ID="LogUsername" runat="server" Text="Username :"></asp:Label></p>
        <p><asp:TextBox ID="TextLogUsername" width="500px" height="30px" runat="server"></asp:TextBox></p>

        <p><asp:Label ID="LogPassword" runat="server" Text="Password :"></asp:Label></p>
        <p><asp:TextBox ID="TextLogPassword" width="500px" height="30px" runat="server"></asp:TextBox></p>

        <p><asp:Button ID="sendLogin" OnClick="sendLogin_Click" runat="server" Text="Login" /></p>
        <p><asp:Literal ID="litLoginError" runat="server"></asp:Literal></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
