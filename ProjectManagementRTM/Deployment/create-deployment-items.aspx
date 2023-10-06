<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create-deployment-items.aspx.cs" Inherits="ProjectManagmementRTM.ProjectManagementRTM.deployment_items" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Development Item</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>Create Developmentl Item</div>
        <div><a href ="./index.html">Home Page</a></div>
        <div>
            <asp:TextBox ID="txtCreateDeploymentItem" runat="server"></asp:TextBox>
            <asp:Button ID="btnCreateDeploymentItem" runat="server" Text="Create Development Item" />
        </div>
    </form>
</body>
</html>
