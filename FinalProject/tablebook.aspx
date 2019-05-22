<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="tablebook.aspx.cs" Inherits="FinalProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">
    <p>
    Choose the Table</p>
<p>
    <asp:CheckBox ID="cbtable1" runat="server" Text="Table 1 " />
&nbsp;(4 Person)</p>
<p>
    <asp:CheckBox ID="cbtable2" runat="server" Text="Table 2 " />
&nbsp;(6 Person)</p>
<p>
    <asp:CheckBox ID="cbtable3" runat="server" Text="Table 3 " />
&nbsp;(2 Person)</p>
<p>
    <asp:CheckBox ID="cbtable4" runat="server" Text="Table 4 " />
    (8 person)</p>
<p>
    <asp:CheckBox ID="cbcabin" runat="server" Text="Cabin " />
&nbsp; (10 Person)</p>
<p>
    <asp:CheckBox ID="cbpartyhall" runat="server" Text="Party Hall" />
&nbsp; (Max 30 People, Rent $250 excluding food items)</p>
<p>
    Email&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbEmail" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" ErrorMessage="Not Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</p>
<p>
    Phone&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbPhone" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbPhone" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    Descrption
    <asp:TextBox ID="tbdesc" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="lbbook" runat="server"></asp:Label>
</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book Table" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.aspx">Back to Main Page</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder1" runat="server">
</asp:Content>
