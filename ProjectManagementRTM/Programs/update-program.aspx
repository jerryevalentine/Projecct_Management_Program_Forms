<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update-program.aspx.cs" Inherits="ProjectManagmementRTM.ProjectManagementRTM.Programs.update_program" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="lblProgram_ID_To_Update" runat="server" Text="Program ID To Update"></asp:Label>
            <asp:TextBox ID="txtProgram_ID_To_Update" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblProgram_ID" runat="server" Text="Program ID"></asp:Label>
            <asp:TextBox ID="txtProgram_ID" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblProgram_Name" runat="server" Text="Program Name"></asp:Label>
            <asp:TextBox ID="txtProgram_Name" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblProgram_Description" runat="server" Text="Program Description"></asp:Label>
            <asp:TextBox ID="txtProgram_Description" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblProgram_Status" runat="server" Text="Program Status"></asp:Label>
            <asp:TextBox ID="txtProgram_Status" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblSubmitButton" runat="server" Text="Create Program"></asp:Label>
            <asp:Button ID="btnSubmitProgram" runat="server" OnClick="btnSubmitProgram_Click" Text="Button" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="grd_update_program" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="update_programs">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Programs_ID" HeaderText="Programs_ID" SortExpression="Programs_ID" />
                    <asp:BoundField DataField="Programs_Name" HeaderText="Programs_Name" SortExpression="Programs_Name" />
                    <asp:BoundField DataField="Programs_Description" HeaderText="Programs_Description" SortExpression="Programs_Description" />
                    <asp:BoundField DataField="Programs_Status" HeaderText="Programs_Status" SortExpression="Programs_Status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="update_programs" runat="server" ConnectionString="<%$ ConnectionStrings:CIS50ConnectionString %>" SelectCommand="SELECT * FROM [Programs]"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
