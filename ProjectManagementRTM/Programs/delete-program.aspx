<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete-program.aspx.cs" Inherits="ProjectManagmementRTM.ProjectManagementRTM.Programs.delete_program" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <a href ="./index.html">Program Home</a>
    <form id="form1" runat="server">

        <asp:Label ID="lblDeleteProgram" runat="server" Text="Program ID"></asp:Label>
        <asp:TextBox ID="txtDeleteProgram" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnDeleteProgram" runat="server" OnClick="btnDeleteProgram_Click" Text="Button" />
        <br />
        <br />
        <asp:GridView ID="gvDeleteProgram" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="delate_program">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Programs_ID" HeaderText="Programs_ID" SortExpression="Programs_ID" />
                <asp:BoundField DataField="Programs_Name" HeaderText="Programs_Name" SortExpression="Programs_Name" />
                <asp:BoundField DataField="Programs_Description" HeaderText="Programs_Description" SortExpression="Programs_Description" />
                <asp:BoundField DataField="Programs_Status" HeaderText="Programs_Status" SortExpression="Programs_Status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="delate_program" runat="server" ConnectionString="<%$ ConnectionStrings:CIS50ConnectionString %>" SelectCommand="SELECT * FROM [Programs]"></asp:SqlDataSource>

    </form>
</body>
</html>
