<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create-program.aspx.cs" Inherits="ProjectManagmementRTM.ProjectManagementRTM.Programs.create_program" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <a href="index.html">Programs Home</a>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblPrograms_ID" runat="server" Text="Program ID"></asp:Label>
            <asp:TextBox ID="txtPrograms_ID" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblPrograms_Name" runat="server" Text="Program Name"></asp:Label>
            <asp:TextBox ID="txtPrograms_Name" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblPrograms_Description" runat="server" Text="Program Description"></asp:Label>
            <asp:TextBox ID="txtPrograms_Description" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblPrograms_Status" runat="server" Text="Program Status"></asp:Label>
            <asp:TextBox ID="txtPrograms_Status" runat="server"></asp:TextBox>
            <div>
                <asp:Button ID="btnCreateProgram" runat="server" Text="Create Program" OnClick="btnCreateProgram_Click" />
            </div>
            <div>
                <asp:Button ID="btnRefreshGrid" runat="server" OnClick="btnRefreshGrid_Click" Text="Refresh Data" />
            </div>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="create_programs">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Programs_ID" HeaderText="Programs_ID" SortExpression="Programs_ID" />
                    <asp:BoundField DataField="Programs_Name" HeaderText="Programs_Name" SortExpression="Programs_Name" />
                    <asp:BoundField DataField="Programs_Description" HeaderText="Programs_Description" SortExpression="Programs_Description" />
                    <asp:BoundField DataField="Programs_Status" HeaderText="Programs_Status" SortExpression="Programs_Status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="create_programs" runat="server" ConnectionString="<%$ ConnectionStrings:CIS50ConnectionString %>" SelectCommand="SELECT * FROM [Programs]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
