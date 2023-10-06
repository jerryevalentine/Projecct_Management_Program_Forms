<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create-development-items.aspx.cs" Inherits="ProjectManagmementRTM.ProjectManagementRTM.create_development_items" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Development Item</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>Create Development Item</div>
        <div><a href ="./index.html">Home Page</a></div>
        <div>
            <asp:TextBox ID="txtCreateDevelopmentlItem" runat="server"></asp:TextBox>
            <asp:Button ID="btnCreateDevelopmentItem" runat="server" Text="Create Development Item" />
        </div>
    </form>
</body>
</html>
