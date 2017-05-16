<%@ Page Title="" Language="C#" MasterPageFile="~/Need Socks.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Need_Socks.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <p><asp:Label ID="Username" runat="server" Text="Username :"></asp:Label></p>
        <p><asp:TextBox ID="TextUname" width="500px" height="30px" runat="server"></asp:TextBox></p>
    
    
        <p><asp:Label ID="REmail" runat="server" Text="Email :"></asp:Label></p>
        <p><asp:TextBox ID="TextREmail" width="500px" height="30px" runat="server"></asp:TextBox></p>
   
    
        <p><asp:Label ID="RPassword" runat="server" Text="Password :"></asp:Label></p>
        <p><asp:TextBox ID="TextRPassword" width="500px" height="30px" runat="server"></asp:TextBox></p>
    
        <p><asp:Button ID="SendReg" OnClick="sendReg_Click" runat="server" Text="Register" /></p>
        <p><asp:Literal ID="litRegError" runat="server"></asp:Literal></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
