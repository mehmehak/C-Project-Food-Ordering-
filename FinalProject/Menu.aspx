<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="FinalProject.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style ="background-color:skyblue; font-family:Arial;  width:auto; font-size:1em">
    <form id="form1" runat="server">
        <div  style ="font-family:Arial; width:100%; height:8%; text-align:center; background-color:#b6cc30;">
       <h1> BM South Asian Cousine </h1>
        </div>
        <div>
            <br />
            Put all the Indian Menu<br />
            1. Vegiterain<br />
            <asp:Image ID="Image1" runat="server" Height="280px" ImageUrl="~/Cheese Naan.jpg" Width="320px" />
&nbsp;
            <asp:Image ID="Image2" runat="server" Height="280px" ImageUrl="~/dhokla.jpg" Width="320px" />
&nbsp;
            <asp:Image ID="Image3" runat="server" Height="280px" ImageUrl="~/chineesecusine.jpg" Width="320px" />
&nbsp;<asp:Image ID="Image4" runat="server" Height="280px" ImageUrl="~/okra.jpg" Width="320px" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Cheese and Naan"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Dhokla"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Noodles"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="Okra"></asp:Label>
            <br />
            <br />
            2. Non- Veg<br />
            <asp:Image ID="Image5" runat="server" Height="280px" ImageUrl="~/nonvegpunjabi.jpg" Width="320px" />
&nbsp;
            <asp:Image ID="Image6" runat="server" Height="280px" ImageUrl="~/fish.jpg" Width="320px" />
&nbsp;
            <asp:Image ID="Image7" runat="server" Height="280px" ImageUrl="~/tamilChicken.jpg" Width="320px" />
&nbsp;
            <asp:Image ID="Image8" runat="server" Height="280px" ImageUrl="~/90-chicken-tikka.jpg" Width="320px" />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Mutton Chicken"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Fish"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Tamil Chicken"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Chicken Tikka"></asp:Label>
            <br />
            <br />
            3. Catering<br />
            <asp:Image ID="Image13" runat="server" Height="280px" ImageUrl="~/catering1.jpg" Width="320px" />
&nbsp;
            <asp:Image ID="Image14" runat="server" Height="280px" ImageUrl="~/catering2.jpg" Width="320px" />
&nbsp;
            <asp:Image ID="Image15" runat="server" Height="280px" ImageUrl="~/catering3.jpg" Width="320px" />
&nbsp;
            <asp:Image ID="Image16" runat="server" Height="280px" ImageUrl="~/catering4.jpg" Width="320px" />
            <br />
            <asp:Label ID="Label13" runat="server" Text="Breakfast"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label14" runat="server" Text="Snacks"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label15" runat="server" Text="Dinner"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label16" runat="server" Text="Lunch"></asp:Label>
            <br />
            <br />
            4. Deserts<br />
            <asp:Image ID="Image9" runat="server" Height="280px" ImageUrl="~/malphuha.jpg" Width="320px" />
&nbsp;
            <asp:Image ID="Image10" runat="server" Height="280px" ImageUrl="~/gulab jamun.jpg" Width="320px" />
&nbsp;
            <asp:Image ID="Image11" runat="server" Height="280px" ImageUrl="~/Maxi-Mango.jpg" Width="320px" />
&nbsp;
            <asp:Image ID="Image12" runat="server" Height="280px" ImageUrl="~/milkshake.jpg" Width="320px" />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Mulphuha"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Text="Gulab Jamun"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" Text="Maxi Mango"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Text="Chocolate Punch"></asp:Label>
        </div>
    </form>
     <div>
        <footer style=" width:100%; height:3%; background-color:#BDBDBD; text-align:center; display:grid;" >
            Boharad @ Sheridan College / <a href="mailto:mehmehak@sheridancollege.ca">mehmehak@sheridancollege.ca</a><br />
        </footer>
</body>
</html>
