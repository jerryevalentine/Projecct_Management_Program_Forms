<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create-business-as-usual.aspx.cs" Inherits="ProjectManagmementRTM.ProjectManagementRTM.business_as_usual" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Business as Usual Item</title>
</head>

<body>
            <a href ="index.html">Project Management Home</a>
    <form id="form1" runat="server">
        <div>Create Business as Usual Item</div>
        <div><a href ="./index.html">Home Page</a></div>
        <div>
            <asp:TextBox ID="txtCreateBusinessAsUsualItem" runat="server"></asp:TextBox>
            <asp:Button ID="btnCreateBusinessAsUsualItem" runat="server" Text="Create Business as Usual Item" />
        </div>
    </form>
</body>
</html>
