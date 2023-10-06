<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create-project.aspx.cs" Inherits="ProjectManagmementRTM.ProjectManagementRTM.Projects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Project</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>Create Project Item</div>
        <div><a href ="./index.html">Home Page</a></div>
        <div>
            <asp:TextBox ID="txtCreateProjectID" runat="server"></asp:TextBox>
            <asp:Button ID="btnCreateProjectItem" runat="server" Text="Create Project Item" OnClick="btnCreateProjectItem_Click" />
            <br />
            <asp:TextBox ID="txtCreateProjectName" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtCreateProjectDescription" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="txtCreateProjectStatus" runat="server"></asp:TextBox>
        </div>
        <div>Grive View</div>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CIS50ConnectionString %>" SelectCommand="SELECT * FROM [Projects]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
