<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete-programs.aspx.cs" Inherits="ProjectManagmementRTM.ProjectManagementRTM.update_programs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <a href ="index.html">Programs Home</a>
    <form id="form1" runat="server">
        <p>
            <asp:TextBox ID="txtPrograms_ID" runat="server"></asp:TextBox>
            <asp:Label ID="lblPrograms_ID" runat="server" Text="Program ID"></asp:Label>
            <br />
            <asp:TextBox ID="txtPrograms_Name" runat="server"></asp:TextBox>
            <asp:Label ID="lblPrograms_Name" runat="server" Text="Program Name"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtProgram_Description" runat="server"></asp:TextBox>
            <asp:Label ID="lblPrograms_Description" runat="server" Text="Program Descripotion"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtProgram_Status" runat="server"></asp:TextBox>
            <asp:Label ID="lblPrograms_Status" runat="server" Text="Program Status"></asp:Label>
        </p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Delete Program" />
        </p>
        <p>
            &nbsp;</p>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Programs_ID" HeaderText="Programs_ID" SortExpression="Programs_ID" />
                    <asp:BoundField DataField="Programs_Name" HeaderText="Programs_Name" SortExpression="Programs_Name" />
                    <asp:BoundField DataField="Programs_Description" HeaderText="Programs_Description" SortExpression="Programs_Description" />
                    <asp:BoundField DataField="Programs_Status" HeaderText="Programs_Status" SortExpression="Programs_Status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CIS50ConnectionString %>" SelectCommand="SELECT * FROM [Programs]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
