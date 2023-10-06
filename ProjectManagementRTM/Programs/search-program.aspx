<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search-program.aspx.cs" Inherits="ProjectManagmementRTM.ProjectManagementRTM.Programs.search_program" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div><a href="index.html">Programs Home</a></div>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="search_programs">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Programs_ID" HeaderText="Programs_ID" SortExpression="Programs_ID" />
                    <asp:BoundField DataField="Programs_Name" HeaderText="Programs_Name" SortExpression="Programs_Name" />
                    <asp:BoundField DataField="Programs_Description" HeaderText="Programs_Description" SortExpression="Programs_Description" />
                    <asp:BoundField DataField="Programs_Status" HeaderText="Programs_Status" SortExpression="Programs_Status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="search_programs" runat="server" ConnectionString="<%$ ConnectionStrings:CIS50ConnectionString %>" SelectCommand="SELECT * FROM [Programs]"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
