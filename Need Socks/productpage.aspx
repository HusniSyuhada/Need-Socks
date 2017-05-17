<%@ Page Title="" Language="C#" MasterPageFile="~/Need Socks.Master" AutoEventWireup="true" CodeBehind="productpage.aspx.cs" Inherits="Need_Socks.productpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:dbCO5027 %>" DeleteCommand="DELETE FROM [ProductTable] WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [ProductTable] ([ID], [Name], [Description], [Price]) VALUES (@ID, @Name, @Description, @Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ProductTable]" UpdateCommand="UPDATE [ProductTable] SET [Name] = @Name, [Description] = @Description, [Price] = @Price WHERE [ID] = @original_ID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2" DataKeyNames="ID" Width="343px">
        <EditItemTemplate>
            ID:
            <p><asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <p />
            Name:
            <p><asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <p />
            Description:
            <p><asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <p />
            Price:
            <p><asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <p />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ID:
            <p><asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
            <p />
            Name:
            <p><asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <p />
            Description:
            <p><asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            <p />
            Price:
            <p><asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <p />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <p><asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <p />
            Name:
            <p><asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            <p />
            Description:
            <p><asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            <p />
            Price:
            <p><asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <p />

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbCO5027 %>" SelectCommand="SELECT * FROM [ProductTable] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p/>
    <asp:Image ID="ProdImg" runat="server" Height="150px" Width="200px" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
