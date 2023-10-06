<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create-design-items.aspx.cs" Inherits="ProjectManagmementRTM.ProjectManagementRTM.create_design_items" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Design Item</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>Create Design Item</div>
        <div><a href ="./index.html">Home Page</a></div>
        <div>
            <asp:TextBox ID="txtCreateDesignlItem" runat="server"></asp:TextBox>
            <asp:Button ID="btnCreateDesignItem" runat="server" Text="Create Design Item" />
        </div>
    </form>
</body>
</html>
