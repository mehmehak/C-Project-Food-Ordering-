<%@ Page Language="C#"  MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="FinalProject.Index" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MenuContentPlaceHolder1" runat="server">

    <p>
        Menu</p>
<p>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Menu.aspx">Vegetarian</asp:HyperLink>
</p>
<p>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Menu.aspx">Non-veg</asp:HyperLink>
</p>
<p>
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Menu.aspx">Desert</asp:HyperLink>
</p>
    <p>
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Menu.aspx">Catering</asp:HyperLink>
</p>
    <p>
    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Memberbook.aspx">Table Booking</asp:HyperLink>
    <br />
</p>
    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder1" runat="server">
     <style type="text/css">
        .div{
            color:blue;
            font-weight:bolder;
            text-align:center;
            font-size:larger;
        }
        .head{
              text-align:center;
              color:blue;
        }
        .auto-style1 {
            width: 100%;
        }

        .auto-style3 {
            width: 111px;
             height: 26px;
         }

         .auto-style4 {
             width: 111px;
             height: 27px;
         }
         .auto-style5 {
             height: 27px;
         }
         .auto-style6 {
             height: 26px;
         }
         

    </style>
 
     <div style="height:100px; margin-left:60%;" >Member Login
       
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">Username</td>
            <td class="auto-style5">
                <asp:TextBox ID="tbusername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="tbpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="btnsubmit" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Submit" />
            </td>
            <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
   
     </div>
     About&nbsp; Us<br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#003300" NavigateUrl="~/Registration.aspx">Click Here for Register</asp:HyperLink>
     <br />
     <br />
     Catering Services<br />
     <br />
     Table Information<br />
     <br />
     Put Some pictures<br />
     &nbsp;&nbsp;
     <br />
   
    <br />
     Contact Information in the button of the page<br />
     <br />
     <br />
<br />
     <br />
<br />
   
    </asp:Content>



