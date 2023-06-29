<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Web_Project_ASP.Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <meta charset="utf-8">
    <link href="../CSS/style.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link href="../bootstrap/cdn.jsdelivr.net_npm_bootstrap@4.0.0_dist_css_bootstrap.min.css" rel="stylesheet" />
    <script src="../bootstrap/code.jquery.com_jquery-3.2.1.slim.min.js"></script>
    <script src="../bootstrap/cdn.jsdelivr.net_npm_bootstrap@4.0.0_dist_js_bootstrap.min.js"></script>
    <script src="../bootstrap/cdn.jsdelivr.net_npm_popper.js@1.12.9_dist_umd_popper.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">

        <div class="jumbotron text-center" style="margin-bottom: 0; background-color: antiquewhite">
            <img src="../Images/logo.png" width="150px" height="150px" />
            <h1>Jesi's Mobile Shop</h1>
        </div>
        <div class="header">
            <div class="container1">
                <div class="navbar" style="height: 90x;">
                    <%--<div class="logo">
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home_page.aspx">Mobile Shop</asp:HyperLink>
        </div>--%>
                    <nav>
                        <ul id="Menuitems">
                            <li>
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/home_page.aspx" Style="color: black; background-color: transparent; text-decoration: none;">Home</asp:HyperLink></li>
                            <li>
                                <h5>Mobile Shop</h5>
                            </li>
                            <%-- <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/products.aspx">Products</asp:HyperLink></li>
           <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/contact.aspx">Contact</asp:HyperLink></li>
           <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/login.aspx">Account</asp:HyperLink></li>--%>
                            <!--<li><a href="cart.html"><img src="images/bag1.png" width="30px",height="30px"></a></li>
           <li><img src="images/menu.png" class="menu-icon" onclick="menutoggle()"></li>-->
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

        <div class="container" style="margin-top:50px;margin-left:300px">
            <div class="col-sm-3"></div>
            <div class="col-sm-6" style="align-items: center">
                <div class="panel panel-danger" style="max-width:500px;margin-left:auto;margin-right:auto;">
                    <div class="panel-heading" style="background-color:grey;margin-bottom:30px;padding:23px;text-align:center">Admin Login</div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label>Username</label>
                                    <asp:TextBox ID="txtusername" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="Label">Password:</asp:Label>
                                    <asp:TextBox ID="txtpassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btnLogin" CssClass="btn btn-success" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                    <asp:Button ID="btnCancel" CssClass="btn btn-danger" runat="server" Text="Cancel" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer">
                    </div>
                </div>
            </div>
            <div class="col-sm-3"></div>
        </div>

        <!--Footer-->

        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="footer-col-1">
                        <h3>Download Our App</h3>
                        <p>Download App for Android and ios mobile phone.</p>
                        <div class="app-logo">
                            <img src="../Images/play-store.png" />
                            <img src="../Images/app-store.png" />
                            
                        </div>
                    </div>
                    <div class="footer-col-2">
                        <img src="../Images/logo.png" />
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
        </div>
        </div>

    </form>
</body>
</html>
