<%@ Page Language="C#"  MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="FinalProject.Admin" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder1" runat="server">

    <p>
    <br />
</p>

</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">
   
    <style type="text/css">

        .auto-style7 {
        width: 159px;
    }
        .auto-style8 {
            width: 159px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style10 {
            width: 159px;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            width: 159px;
            height: 29px;
        }
        .auto-style13 {
            height: 29px;
        }
    </style>

    
        <table class="auto-style1">
            <tr>
                <td class="auto-style10">First Name</td>
                <td class="auto-style11">
                    <asp:TextBox ID="tbFname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">Last Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tbLname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Address</td>
                <td>
                    <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Phone</td>
                <td>
                    <asp:TextBox ID="tbphone" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">Email</td>
                <td class="auto-style13">
                    <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbemail" ErrorMessage="Is not valid email" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style13">
                    </td>
            </tr>
            <tr>
                <td class="auto-style7">Username</td>
                <td>
                    <asp:TextBox ID="tbuser" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">ID
                    <asp:DropDownList ID="ddID" runat="server" DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reset" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    


<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" >
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GroupprojectConnectionString2 %>" SelectCommand="SELECT [ID], [FirstName], [LastName], [Address], [Phone], [Email] FROM [clientInfo]"></asp:SqlDataSource>
    


<br />
Table Booking Info<br />
<asp:DropDownList ID="ddbooking" runat="server" DataSourceID="SqlDataSource2" DataTextField="TableID" DataValueField="TableID">
</asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnUpdateTable" runat="server" Text="Update Booking" OnClick="btnUpdateTable_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnDeleteTable" runat="server" Text="Delete Booking" OnClick="btnDeleteTable_Click" />
<br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="TableID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="TableID" HeaderText="TableID" InsertVisible="False" ReadOnly="True" SortExpression="TableID" />
            <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName" />
            <asp:BoundField DataField="Table1" HeaderText="Table1" SortExpression="Table1" />
            <asp:BoundField DataField="Table2" HeaderText="Table2" SortExpression="Table2" />
            <asp:BoundField DataField="Table3" HeaderText="Table3" SortExpression="Table3" />
            <asp:BoundField DataField="Table4" HeaderText="Table4" SortExpression="Table4" />
            <asp:BoundField DataField="Cabin" HeaderText="Cabin" SortExpression="Cabin" />
            <asp:BoundField DataField="Hall" HeaderText="Hall" SortExpression="Hall" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GroupprojectConnectionString4 %>" SelectCommand="SELECT [TableID], [ClientName], [Table1], [Table2], [Table3], [Table4], [Cabin], [Hall] FROM [TableBook]"></asp:SqlDataSource>
<br />
    


<br />
    


</asp:Content>

