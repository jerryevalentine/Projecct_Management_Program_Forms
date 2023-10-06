<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ProjectManagmementRTM.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 124px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblProjectID" runat="server" Text="Enter Project ID"></asp:Label>
        <asp:TextBox ID="txtProjectID" runat="server">1</asp:TextBox>
        <p>
            <asp:Button ID="btnProjectId" runat="server" OnClick="Button1_Click" Text="Select Project ID" />
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SelectProjects">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Project_ID" HeaderText="Project_ID" SortExpression="Project_ID" />
                <asp:BoundField DataField="Project_Name" HeaderText="Project_Name" SortExpression="Project_Name" />
                <asp:BoundField DataField="Project_Description" HeaderText="Project_Description" SortExpression="Project_Description" />
                <asp:BoundField DataField="Project_Status" HeaderText="Project_Status" SortExpression="Project_Status" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SelectProjects" runat="server" ConnectionString="<%$ ConnectionStrings:CIS50ConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [Projects] WHERE ([Project_ID] = @Project_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtProjectID" DefaultValue="1" Name="Project_ID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
