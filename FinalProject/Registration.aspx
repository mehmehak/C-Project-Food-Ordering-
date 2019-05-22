<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" 
    Inherits="FinalProject.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">
    <style type="text/css">

        .head{
              text-align:center;
              color:blue;
        }
        .input{
            background-color:aquamarine;
            font-style:italic;
            font-weight:bolder;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
        width: 90px;
    }
        .auto-style4 {
            width: 90px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 134px;
        }
        .auto-style8 {
            width: 134px;
            height: 23px;
        }
    .auto-style9 {
        width: 90px;
        height: 29px;
    }
    .auto-style10 {
        width: 134px;
        height: 29px;
    }
    .auto-style11 {
        height: 29px;
    }
    .reset{
        font-weight:bold; font-size:.9em; font-style:italic;
        background-color:aquamarine;
    }
    </style>
    <formview>
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">First Name</td>
                <td class="auto-style11">
                    <asp:TextBox ID="tbFname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbFname" ErrorMessage="Cannot be empty" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style8">Last Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tbLname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbLname" ErrorMessage="Cannot be empty" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">Address</td>
                <td>
                    <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbAddress" ErrorMessage="Cannot be empty" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">Phone</td>
                <td>
                    <asp:TextBox ID="tbphone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">Email</td>
                <td class="auto-style11">
                    <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbemail" ErrorMessage="Cannot be empty" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server" ControlToValidate="tbemail" ErrorMessage="Not Valid Email" Font-Bold="False" Font-Size="Medium" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10">Username</td>
                <td class="auto-style11">
                    <asp:TextBox ID="tbuser" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbuser" ErrorMessage="Cannot be empty" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">Password</td>
                <td>
                    <asp:TextBox ID="tbpassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbpassword" ErrorMessage="Cannot be empty" Font-Bold="False" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator17" runat="server" ControlToValidate="tbpassword" ErrorMessage="Must have one uppercase, number and sepecial char" Font-Bold="False" Font-Size="Smaller" ForeColor="Red" ValidationExpression="((?=.*\d)(?=.*[A-Z])(?=.*[\W]).{6,20})"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">Re-type Password</td>
                <td>
                    <asp:TextBox ID="tbrpassword" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbrpassword" ErrorMessage="Cannot be empty" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbpassword" ControlToValidate="tbrpassword" ErrorMessage="Password Must Match" Font-Bold="False" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click1" ForeColor="Black" BackColor="#99FF99" Font-Bold="True" Font-Italic="True" Font-Size="Medium" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input class="reset" id ="Reset1" type="reset" value="Reset" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#3333CC" NavigateUrl="~/Index.aspx">Back To Main Page</asp:HyperLink>
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        </formview>
  </asp:Content>