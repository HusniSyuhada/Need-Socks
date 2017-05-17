<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product upload.aspx.cs" Inherits="Need_Socks.product_upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FileUpload ID="imageFileUploadControl" runat="server" />
    </div>
        <p>
        <asp:Image ID="CurrentImage" runat="server" Height="150px" Width="200px" />

        </p>
        <p>
            <asp:Button ID="UploadBtn" runat="server" Text="Upload" OnClick="UploadBtn_Click" />
        </p>
    </form>
</body>
</html>
