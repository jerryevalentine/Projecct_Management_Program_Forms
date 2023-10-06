<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create-test-items.aspx.cs" Inherits="ProjectManagmementRTM.ProjectManagementRTM.test_items" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Test Item</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>Create Test Item</div>
        <div><a href ="./index.html">Home Page</a></div>
        <div>
            <asp:TextBox ID="txtCreatTestlItem" runat="server"></asp:TextBox>
            <asp:Button ID="btnCreateTesttItem" runat="server" Text="Create Test Item" />
        </div>
    </form>
</body>
</html>
