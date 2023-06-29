<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Web_Project_ASP.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Jesi's Mobile Shop</title>
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
          <img src="images/logo.png" width="150px">
        </div>
        <nav>
        </nav>
      </div>
    </div>
   </div>



   <!-----account page------>

   <div class="account-page">
      <div class="container">
        <div class="row">
          <div class="col-2">
              <div class="form-container">
              <form id="LoginForm">
                  <h2 style="color:#000">Register</h2>
                 
                  <asp:TextBox class="u" ID="usernameregisterid" runat="server" placeholder="Username"></asp:TextBox>
                  <asp:TextBox class="u" ID="emailregisterid" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                  <asp:TextBox class="u" ID="passwordregisterid" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                  <asp:Button ID="registerbtn" runat="server" Text="Register" class="btn" OnClick="registerbtn_Click" />
                  <asp:HyperLink ID="HyperLink8" runat="server" class="b" NavigateUrl="~/login.aspx">Now Login?</asp:HyperLink>
               </form>
            </div>
            
          </div>
          <div class="col-2">
            <img src="images/home_page.png"width="100%">
          </div>
        </div>
      </div>
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


<!--js for toggle form-->

<script>
  var LoginForm=document.getElementById("LoginForm");
  var RegForm=document.getElementById("RegForm");
  var Indicator=document.getElementById("Indicator");

  function register(){
    RegForm.style.transform="translateX(0px)";
    LoginForm.style.transform="translateX(0px)";
    Indicator.style.transform="translateX(100px)";
  }
  function login(){
    RegForm.style.transform="translateX(300px)";
    LoginForm.style.transform="translateX(300px)";
    Indicator.style.transform="translateX(0px)";
  }
</script>

<script>
    function clearDefaultText(element) {
        if (element.value === element.defaultValue) {
            element.value = '';
        }
    }
</script>
        </div>
    </form>
</body>
</html>
