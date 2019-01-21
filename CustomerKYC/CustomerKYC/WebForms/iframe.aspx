﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iframe.aspx.cs" Inherits="CustomerKYC.WebForms.iframe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
     <meta charset="utf-8" />
    <title>MaxiBiz Bootstrap Business Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Favicons -->
    <link href="../img/favicon.png" rel="icon" />
    <link href="../img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet" />

    <!-- Bootstrap CSS File -->
    <link href="../lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Libraries CSS Files -->
    <link href="../lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../lib/prettyphoto/css/prettyphoto.css" rel="stylesheet" />
    <link href="../lib/hover/hoverex-all.css" rel="stylesheet" />
    <link href="../lib/jetmenu/jetmenu.css" rel="stylesheet" />
    <link href="../lib/owl-carousel/owl-carousel.css" rel="stylesheet" />

    <!-- Main Stylesheet File -->
    <link href="../css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/colors/blue.css" />

    <!-- =======================================================
    Template Name: MaxiBiz
    Template URL: https://templatemag.com/maxibiz-bootstrap-business-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
    <style>
      .main{
          margin-left:300px;
          margin-right:200px;
      }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="topbar clearfix">
                <div class="container">
                    <div class="col-lg-12 text-right">
                        <div class="social_buttons">
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Google+"><i class="fa fa-google-plus"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Dribbble"><i class="fa fa-dribbble"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="RSS"><i class="fa fa-rss"></i></a>
                        </div>
                    </div>
                </div>
                <!-- end container -->
            </div>
        </div>
        <!--end topbar-->
        <header class="header">
            <div class="container">
                <div class="site-header clearfix">
                    <div class="col-lg-3 col-md-3 col-sm-12 title-area">
                        <div class="site-title" id="title">
                            <a href="index.html" title="">
                                <h4>Prime<span>Bank</span></h4>
                            </a>
                        </div>
                    </div>
                    <!-- title area -->
                    <div class="col-lg-9 col-md-12 col-sm-12">
                        <div id="nav" class="right">
                            <div class="container clearfix">
                                <ul id="jetmenu" class="jetmenu blue">
                                    <li><a href="Home.aspx">Home</a></li>
                                    <li><a href="Home.aspx">Logout</a></li>
                                    <li><a href="about.aspx">About Us</a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- nav -->
                    </div>
                    <!-- title area -->
                </div>
                <!-- site header -->
            </div>
            <!-- end container -->
        </header>
        <!-- end header -->
    <div class="main">
      
    <iframe name ="iframe"  id="iframe"   src="Registration.aspx" height="1000" width="1300"style="align-self:center;border-color:#3498db;"></iframe>

    </div>
             <footer class="footer">
    <div class="container">
      <div class="widget col-lg-3 col-md-3 col-sm-12">
        <h4 class="title">About us</h4>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s..</p>
        <a class="button small" href="#">read more</a>
      </div>
      <!-- end widget -->
      <div class="widget col-lg-3 col-md-3 col-sm-12">
        <h4 class="title">Recent Posts</h4>
        <ul class="recent_posts">
          <li>
            <a href="home1.html#">
						<img src="img/recent_post_01.png" alt="" />Our New Dashboard Is Here</a>
            <a class="readmore" href="#">read more</a>
          </li>
          <li>
            <a href="home1.html#">
						<img src="img/recent_post_02.png" alt="" />Design Is In The Air</a>
            <a class="readmore" href="#">read more</a>
          </li>
        </ul>
        <!-- recent posts -->
      </div>
      <!-- end widget -->
      <div class="widget col-lg-3 col-md-3 col-sm-12">
        <h4 class="title">Get In Touch</h4>
        <ul class="contact_details">
          <li><i class="fa fa-envelope-o"></i> info@yoursite.com</li>
          <li><i class="fa fa-phone-square"></i> +34 5565 6555</li>
          <li><i class="fa fa-home"></i> Some Fine Address, 887, Madrid, Spain.</li>
          <li><a href="#"><i class="fa fa-map-marker"></i> View large map</a></li>
        </ul>
        <!-- contact_details -->
      </div>
      <!-- end widget -->
      <div class="widget col-lg-3 col-md-3 col-sm-12">
        <h4 class="title">Flickr Stream</h4>
        <ul class="flickr">
          <li><a href="#"><img alt="" src="img/flickr_01.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_02.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_03.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_04.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_05.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_06.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_07.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_08.jpg"></a></li>
        </ul>
      </div>
      <!-- end widget -->
    </div>
    <!-- end container -->

    <div class="copyrights">
      <div class="container">
        <div class="col-lg-6 col-md-6 col-sm-12 columns footer-left">
          <p>Copyright © 2014 - All rights reserved.</p>
          <div class="credits">
            <!--
              You are NOT allowed to delete the credit link to TemplateMag with free version.
              You can delete the credit link only if you bought the pro version.
              Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/maxibiz-bootstrap-business-template/
              Licensing information: https://templatemag.com/license/
            -->
            Created with MaxiBiz template by <a href="https://templatemag.com/">TemplateMag</a>
          </div>
        </div>
        <!-- end widget -->
        <div class="col-lg-6 col-md-6 col-sm-12 columns text-right">
          <div class="footer-menu right">
            <ul class="menu">
              <li><a href="index.html">Home</a></li>
              <li><a href="about.html">About</a></li>
              <li><a href="#">Sitemap</a></li>
              <li><a href="#">Site Terms</a></li>
              <li><a href="contact">Contact</a></li>
            </ul>
          </div>
        </div>
        <!-- end large-6 -->
      </div>
      <!-- end container -->
    </div>
    <!-- end copyrights -->
  </footer>
  <!-- end footer -->
    </form>
</body>
</html>
