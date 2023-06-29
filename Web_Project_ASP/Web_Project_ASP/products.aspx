<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="Web_Project_ASP.products" %>

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


<div class="small_container">

    <div class="row row-2">
      <h2 style="margin-left: 80px;">All Products</h2>
      <select>
        <option>Default Sorting</option>
        <option>Sort by price</option>
        <option>Sort by popularity</option>
        <option>Sort by rating</option>
        <option>Sort by sale</option>
      </select>
    </div>






  <div class="row">
    <div class="col-4">
      <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/product_details.aspx"><img src="images/iphone.jpg"></asp:HyperLink>
      <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/product_details.aspx"><h4>Iphone 14 pro max</h4></asp:HyperLink>
      <div class="rating">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-o"></i>
      </div>
      <p style="color: black;">$1099.00</p>
    </div>
    <div class="col-4">
      <img src="images/pixel.jpg">
      <h4>Pixel 7 pro</h4>
      <div class="rating">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-o"></i>
      </div>
      <p style="color: black;">$899.00</p>
    </div>
    <div class="col-4">
      <img src="images/redmi.jpg">
      <h4>Redmi Note 11</h4>
      <div class="rating">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-o"></i>
      </div>
      <p style="color: black;">$349.00</p>
    </div>
    <div class="col-4">
      <img src="images/home_page.png">
      <h4>Samsung Galaxy S22 Ultra</h4>
      <div class="rating">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-o"></i>
      </div>
      <p style="color: black;">$1299.00</p>
    </div>
  </div>
  <div class="row">
    <div class="col-4">
      <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/product_details.aspx"><img src="images/iphone.jpg"></asp:HyperLink>
      <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/product_details.aspx"><h4>Iphone 14 pro max</h4></asp:HyperLink>
      <div class="rating">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-o"></i>
      </div>
      <p style="color: black;">$1099.00</p>
    </div>
    <div class="col-4">
      <img src="images/pixel.jpg">
      <h4>Pixel 7 pro</h4>
      <div class="rating">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-o"></i>
      </div>
      <p style="color: black;">$899.00</p>
    </div>
    <div class="col-4">
      <img src="images/redmi.jpg">
      <h4>Redmi Note 11</h4>
      <div class="rating">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-o"></i>
      </div>
      <p style="color: black;">$349.00</p>
    </div>
    <div class="col-4">
      <img src="images/home_page.png">
      <h4>Samsung Galaxy S22 Ultra</h4>
      <div class="rating">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-o"></i>
      </div>
      <p style="color: black;">$1299.00</p>
    </div>
  </div>
  <div class="row">
    <div class="col-4">
      <img src="images/Samsung_Galaxy_S23_Ultra.jpg">
      <h4>Samsung Galaxy S23 Ultra</h4>
      <div class="rating">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-o"></i>
      </div>
      <p style="color: black;">$1099.00</p>
    </div>
    <div class="col-4">
      <img src="images/Tecno_Spark_Go_2023.jpg">
      <h4>Tecno Spark Go 2023</h4>
      <div class="rating">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-o"></i>
      </div>
      <p style="color: black;">$899.00</p>
    </div>
    <div class="col-4">
      <img src="images/Vivo_Y22.jpg">
      <h4>Vivo Y22</h4>
      <div class="rating">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-o"></i>
      </div>
      <p style="color: black;">$349.00</p>
    </div>
    <div class="col-4">
      <img src="images/Oppo_Reno8_T.jpg">
      <h4>Oppo Reno8 T</h4>
      <div class="rating">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-o"></i>
      </div>
      <p style="color: black;">$1299.00</p>
    </div>
  </div>

  <div class="page-btn">
    <span>1</span>
    <span>2</span>
    <span>3</span>
    <span>4</span>
    <span>&#8594;</span>
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
        </div>
    </form>
</body>
</html>
