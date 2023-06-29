<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="product_details.aspx.cs" Inherits="Web_Project_ASP.product_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Jesi's Mobile Shop</title>
    <link href="CSS/style.css" rel="stylesheet" />
    <link rel="stylesheet"type="text/css" href="style.css">
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



<!----------Single Product details----------->


<div class="small_container single-product">
  <div class="row">
    <div class="col-2">
      <img src="images/iphone.jpg"width="100%" id="ProductImg">

      <div class="small-img-row">
        <div class="small-img-col">
          <img src="images/gallary-1.jpg"width="100%" class="small-img">
        </div>
        <div class="small-img-col">
          <img src="images/gallary-2.jpg"width="100%" class="small-img">
        </div>
        <div class="small-img-col">
          <img src="images/gallary-3.jpg"width="100%" class="small-img">
        </div>
        <div class="small-img-col">
          <img src="images/gallary-4.jpg"width="100%" class="small-img">
        </div>
      </div>



    </div>
    <div class="col-2">
      <h1 style="color:black">Apple Iphone 14 Pro max</h1>
      <h4>$2099</h4>
      <input type="number"value="1">
      <asp:LinkButton ID="LinkButton1" runat="server" class="btn" PostBackUrl="~/cart.aspx">Add to Cart</asp:LinkButton>
      

      <h3>Product Details <i class="fa fa-indent"></i></h3>
      <br>
      <p style="color:black">Apple iPhone 14 Pro Max comes with a 6.7 inches LTPO Super Retina XDR OLED 1290 x 2796 pixels screen. It has a double punch-hole design. The back camera is of quad 48+12+12 Megapixel + TOF 3D LiDAR scanner with powerful image processing capability and 4K video recording. The front one is of Dual 12 MP and SL 3D camera. Apple iPhone 14 Pro Max comes with – mAh battery with – fast charging solution. It has 6 GB RAM, up to 3.46 GHz Hexa-core CPU and Apple GPU. It is powered by a 4 nm Apple A16 Bionic chipset. The device comes with 128, 256, 512 GB or 1 TB internal storage.</p>
    </div>
  </div>
</div>


<!--------title--------->

<div class="small-container">
  <div class="row row-2">
    <h2>Related Products</h2>
    <p style="color:black">View More</p>
  </div>
</div>




<!----------products------------>
<div class="small_container">


<div class="row">
    <div class="col-4">
      <img src="images/iphone.jpg">
      <h4>Iphone 13 pro max</h4>
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


<!-------js for product gallary------->

<script>
  var ProductImg = document.getElementById("ProductImg");
  var SmallImg = document.getElementsByClassName("small-img");

  SmallImg[0].onclick=function(){
    ProductImg.src=SmallImg[0].src;
  }
  SmallImg[1].onclick=function(){
    ProductImg.src=SmallImg[1].src;
  }
  SmallImg[2].onclick=function(){
    ProductImg.src=SmallImg[2].src;
  }
  SmallImg[3].onclick=function(){
    ProductImg.src=SmallImg[3].src;
  }


</script>
        </div>
    </form>
</body>
</html>
