<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create-function-requirement-items.aspx.cs" Inherits="ProjectManagmementRTM.ProjectManagementRTM.function_requirement_items" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Functional Requirement Item</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>Create Functional Requirement Item</div>
        <div><a href ="./index.html">Home Page</a></div>
        <div>
            <asp:TextBox ID="txtCreateFunctionalRequirmentlItem" runat="server"></asp:TextBox>
            <asp:Button ID="btnCreateFunctionalRequirmentItem" runat="server" Text="Create Functional Requirment Item" />
        </div>
    </form>
</body>
</html>
