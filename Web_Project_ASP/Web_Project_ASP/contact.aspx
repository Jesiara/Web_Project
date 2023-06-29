<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Web_Project_ASP.contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>All Products - Jesi's Mobile Shop</title>
    <link rel="stylesheet"type="text/css" href="style.css">
    <link href="CSS/style.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
    <div class="container1">
      <div class="navbar" style="height: 140px;" >
        <div class="logo">
         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home_page.aspx"><img src="images/logo.png" width="150px"></asp:HyperLink>
        </div>
        <nav>
         <ul id="Menuitems">
          <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/home_page.aspx">Home</asp:HyperLink></li>
           <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/products.aspx">Products</asp:HyperLink></li>
           <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/contact.aspx">Contact</asp:HyperLink></li>
           <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/login.aspx">Account</asp:HyperLink></li>
         </ul>
        </nav>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/cart.aspx"><img src="images/bag1.png" width="30px",height="30px"></asp:HyperLink>
        <img src="images/menu.png" class="menu-icon" onclick="menutoggle()">
      </div>
    </div>
   </div>

<div class="contact">
  <h1>Mim's Mobile Shop</h1>
  <h2>Contact Number : 01618292814</h2>
  <h2>Email : mim2000@gmail.com</h2>
  <h2>Address : Fulbarigate ,Khulna</h2>
  <img src="images/home_page.png">
</div>
<!--Footer-->

<div class="footer">
  <div class="container">
    <div class="row">
      <div class="footer-col-1">
        <h3>Download Our App</h3>
        <p>Download App for Android and ios mobile phone.</p>
        <div class="app-logo">
          <img src="images/play-store.png">
          <img src="images/app-store.png">
        </div>
      </div>
      <div class="footer-col-2">
        <img src="images/logo.png">
        <p>A mobile friendly online store opens your e-commerce business up to this whole new demographic.</p>
      </div>
      <div class="footer-col-3">
        <h3>Useful Links</h3>
        <ul>
          <li>Coupons</li>
          <li>Blog Post</li>
          <li>Return Policy</li>
          <li>Join Affiliate</li>
        </ul>
      </div>
      <div class="footer-col-4">
        <h3>Follow us</h3>
        <ul>
          <li>Facebook</li>
          <li>Twitter</li>
          <li>Instagram</li>
          <li>You Tube</li>
        </ul>
      </div>
    </div>
    <hr>
    <p class="copyright">Copyright 2023 - Easy Tutorials</p>
  </div>
</div>

<!--js for toggle menu-->
<script>
  var Menuitems=document.getElementById("Menuitems");

  Menuitems.style.maxHeight = "0px";

  function menutoggle(){
    if(Menuitems.style.maxHeight == "0px")
    {
      Menuitems.style.maxHeight = "200px";
    }
    else{
      Menuitems.style.maxHeight = "0px";
    }
  }
</script>
        </div>
    </form>
</body>
</html>
