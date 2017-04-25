<%@ Page Title="" Language="C#" MasterPageFile="~/Need Socks.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Need_Socks.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <link href="CSS/style.css" rel="stylesheet" type="text/css" />
    <script src="map.js"></script>

        <fieldset class="field">
            <legend class="contactus"><b>Contact Us</b></legend>
            <table class="table">
                <tr class="contact">
            <td>
                <b>Name:</b>
                <asp:TextBox ID="TextBox1" class="txtbox1" runat="server"></asp:TextBox>
            </td>
                </tr>
            <tr class="contact">
            <td>
                <b>Email:</b>
                <asp:TextBox ID="TextBox2" class="txtbox2" runat="server"></asp:TextBox>
            </td>
                </tr>
                <tr class="contact">
            <td>
                <b>Subject:</b>
                <asp:TextBox ID="TextBox3" class="txtbox3" runat="server"></asp:TextBox>
            </td>
                </tr>
                <tr class="contact">
            <td>
                <b>Comment:</b>
                <asp:TextBox ID="TextBox4" CssClass="txtbox4"  runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
            </td>
                </tr>
                </table>
            <asp:Button ID="Button1" class="send" runat="server" Text="Send" />
    </fieldset>
    <h2>Find Us From The Map</h2>
    <div id="googleMap" style="width:1000px;height: 500px"350"></div>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDcfw-eQ5at2LlR99kRn10xi3b4Dno6zaw&callback=myMap">
    </script>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    </asp:Content>
