
<%@ Page Title="" Language="C#" MasterPageFile="~/Need Socks.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Need_Socks.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/style.css" rel="stylesheet" type="text/css" />
    <script src="map.js"></script>    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <fieldset class="field">
            <legend class="contactus"><b>Contact Us</b></legend>
            <table class="table">
                <tr class="contact">
            <td>
                <asp:Label ID="Name" runat="server" Text="Name :"></asp:Label>
                <asp:TextBox ID="TextName" width="500px" height="30px" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ValidName" runat="server" ControlToValidate="TextName" ErrorMessage="***Please enter your name***" Font-Size="Smaller"></asp:RequiredFieldValidator>
            </td>
                </tr>
            <tr class="contact">
            <td>
                <asp:Label ID="Email" runat="server" Text="Email :"></asp:Label>
                <asp:TextBox ID="TextEmail" width="500px" height="30px" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="valEmail" runat="server" ControlToValidate="TextEmail" ErrorMessage="***Please enter your email address***" Font-Size="Smaller"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="validateEmail" runat="server" ErrorMessage="***Please enter a valid email address.***" ControlToValidate="TextEmail" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Font-Size="Smaller"  />
            </td>
                </tr>
                <tr class="contact">
            <td>
                <asp:Label ID="Subject" runat="server" Text="Subject :"></asp:Label>
                <asp:TextBox ID="TextSubject" width="500px" height="30px" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="validateSubject" runat="server" ControlToValidate="TextSubject" ErrorMessage="***Please enter the subject***" Font-Size="Smaller"></asp:RequiredFieldValidator>
            </td>
                </tr>
                <tr class="contact">
            <td>
                <asp:Label ID="Comment" runat="server" Text="Comment :"></asp:Label>
                <asp:TextBox ID="TextComment" CssClass="txtbox4" width="500px"  runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="validateComment" runat="server" ControlToValidate="TextComment" ErrorMessage="***Please enter the comment***" Font-Size="Smaller"></asp:RequiredFieldValidator>
            </td>
                </tr>
                <tr class="Send">
            <td>
                <asp:Button ID="btnSendEmail" OnClick="btnSendEmail_Click"  runat="server" Text="Send" ></asp:Button>
            </td>
                </tr>
                <tr>
            <td>
                <asp:Label ID="result" runat="server" ></asp:Label>
            </td>
                </tr>
                </table>
            

    </fieldset>
    <h2>Find Us From The Map</h2>
    <div id="googleMap" style="width:1000px;height: 500px"350"></div>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDcfw-eQ5at2LlR99kRn10xi3b4Dno6zaw&callback=myMap">
    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    </asp:Content>
