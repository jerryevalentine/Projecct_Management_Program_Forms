<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create-project.aspx.cs" Inherits="ProjectManagmementRTM.create_project" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SQLDataSourceCreateProject">
        </asp:GridView>
        <asp:SqlDataSource ID="SQLDataSourceCreateProject" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
