<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CustomerKYC.WebForms.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    <%--<meta charset="utf-8" />
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
    <link rel="stylesheet" href="../css/colors/blue.css" />--%>

    <!-- =======================================================
    Template Name: MaxiBiz
    Template URL: https://templatemag.com/maxibiz-bootstrap-business-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>
<body>
    <form id="form1" runat="server">
        <%--<div>
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
        </header>--%>
        <!-- end header -->





        <div class="customer1" style="font-family:sans-serif;">
            <style>
                body {
                    font-size: large;
                    font-style: normal;
                }

                .required {
                    color: red;
                    font-weight: bold;
                }
            </style>


            <h2 style="text-align:center;color:#3498db;font-family:sans-serif">User Details </h2>
            <p class="title" style="font-size:x-large;color:#3498db;">Personal</p>

            <table class="cust">

                <tr>
                    <td>
                        <label id="prefix" runat="server">Prefix</label>
                    </td>
                    <td>
                        <select name="ddlPrefix" id="ddlPrefix" runat="server">
                            <option selected="selected" value="Select" runat="server">Select</option>
                            <option value="Mr.">Mr.</option>
                            <option value="Master">Master</option>
                            <option value="Ms.">Ms.</option>
                            <option value="Mrs.">Mrs.</option>
                            <option value="Dr.">Dr.</option>
                        </select>

                    </td>

                    <td>
                        <label id="fname" runat="server">First Name</label>
                        <label id="req" class="required">*</label>
                    </td>
                    <td>
                        <input type="text" id="first_name" runat="server" />
                        &nbsp&nbsp </td>

                    <td>
                        <label id="mname" runat="server">Middle Name</label></td>
                    <td>
                        <input type="text" id="mid_name" runat="server" />&nbsp&nbsp </td>
                    <td>
                        <label id="lname" runat="server">Last Name</label>
                        <label id="req1" class="required">*</label>
                    </td>
                    <td>
                        <input type="text" id="last_name" runat="server" />
                        &nbsp&nbsp </td>


                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <label id="pan" runat="server">Pan Number</label>
                        <label id="req2" class="required">*</label>

                    </td>
                    <td>
                        <input type="text" runat="server" id="pan_num" />
                    </td>
                    &nbsp&nbsp 
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>

                <tr>
                    <td>
                        <label id="aadhar" runat="server">Aadhar Number</label>
                        <label id="req3" class="required">*</label>
                    </td>
                    <td>
                        <input type="text" id="aadhar_num" runat="server" />
                    </td>
                    &nbsp&nbsp 
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>

                <tr>
                    <td>
                        <label id="passport" runat="server">Passport Number</label></td>
                    <td>
                        <input type="text" id="pass_num" runat="server" />
                        &nbsp&nbsp 
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>


            </table>
            <table class="cust1">
                <p class="title" style="font-size:x-large;color:#3498db;">
                    Occupation & Income 
                </p>
                <tr>
                    <td>
                        <label id="occ" runat="server">Occupation</label>
                        <label id="req4" class="required">*</label>
                    </td>
                    <td>
                        <select name="dropdwn" id="occ_dd" runat="server">
                            <option selected="selected" value="Select">Select</option>
                            <option value="Salaried">Salaried</option>
                            <option value="Self Employed">Self Employed</option>
                            <option value="Retired">Retired</option>
                            <option value="Self-Employed Professional">Self-Employed Professional</option>
                            <option value="Student">Student</option>
                            <option value="Housewife">Housewife</option>
                            <option value="Politician">Politician</option>
                            <option value="Others">Others</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <label id="funds" runat="server">Source of Funds</label>
                        <label id="req5" class="required">*</label>
                    </td>
                    <td>
                        <select name="dropdwn" id="sof" runat="server">
                            <option selected="selected" value="Select">Select</option>
                            <option value="Salary">Salary</option>
                            <option value=">Agriculture">Agriculture</option>
                            <option value="Business Income">Business Income</option>
                            <option value="Investment Income">Investment Income</option>
                            <option value="Others">Others</option>
                        </select>
                    </td>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                </tr>
                <tr>
                    <td>
                        <label id="annual_inc" runat="server">Gross Annual Income</label>
                        <label id="req6" class="required">*</label>
                    </td>
                    <td>
                        <select name="dropdwn" id="gross_inc" runat="server">
                            <option selected="selected" value="Select">Select</option>
                            <option value="<50,000"><50,000</option>
                            <option value="50,000-1 Lac">50,000-1 Lac</option>
                            <option value="1-3 Lac">1-3 Lac </option>
                            <option value="3-5 Lac">3-5 Lac</option>
                            <option value="5-7.5 Lac">5-7.5 Lac</option>
                            <option value="7.5-10 Lac">7.5-10 Lac</option>
                            <option value="10-15 Lac">10-15 Lac</option>
                            <option value=">15 Lac">>15 Lac</option>

                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <label id="res" runat="server">Residence Type</label>
                        <label id="req7" class="required">*</label>
                    </td>
                    <td>
                        <select name="dropdwn" id="res_type" runat="server">
                            <option selected="selected" value="Select">Select</option>
                            <option value="Owned">Owned</option>
                            <option value=">Rental/Leased">Rental/Leased</option>
                            <option value="Ancestral/Family">Ancestral/Family</option>
                            <option value="Company Provided">Company Provided</option>

                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>



            </table>
            <table class="cust2">
                <p class="title" style="font-size:x-large;color:#3498db;">
                    Mailing Address & Contact Details
                </p>
                <tr>
                    <td>
                        <label id="flat" runat="server">Flat No./Building Name </label>
                        <label id="req8" class="required">*</label>
                    </td>
                    <td>
                        <input type="text" runat="server" id="flatno" />
                        &nbsp&nbsp 
                    </td>

                    <td>
                        <label id="street" runat="server">Street Number</label>
                    </td>
                    <td>
                        <input type="text" id="street_no" runat="server" />
                        &nbsp&nbsp 
                    </td>
                    <td>
                        <label id="landmark" runat="server">Landmark</label>
                    </td>
                    <td>
                        <input type="text" id="land" runat="server" />&nbsp&nbsp 
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <label id="state" runat="server">State</label>
                        <label id="req9" class="required">*</label>
                    </td>
                    <td>
                        <select name="dropdwn" id="stat" runat="server">
                            <option selected="selected" value="Select">Select</option>
                            <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                            <option value="Andaman and Nicobar Island">Andaman and Nicobar Island</option>
                            <option value="Assam">Assam</option>
                            <option value="Delhi">Delhi</option>
                            <option value="Karnataka">Karnataka</option>
                            <option value="Kerala">Kerala</option>
                            <option value="Odisha">Odisha</option>
                            <option value="Meghalaya">Meghalaya</option>
                            <option value="Telangana">Telangana</option>
                            <option value="Tripura">Tripura</option>
                            <option value="Sikkim">Sikkim</option>
                            <option value="Punjab">Punjab</option>
                            <option value="Uttar Pradesh">Uttar Pradesh</option>
                            <option value="Manipur">Manipur</option>
                            <option value="Goa">Goa</option>
                            <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                        </select>
                    </td>
                    <td>
                        <label id="city" runat="server">City</label>
                        <label id="req10" class="required">*</label>
                    </td>
                    <td>
                        <input type="text" id="city_name" runat="server" />&nbsp&nbsp 
                    </td>
                    <td>
                        <label id="pin" runat="server">PIN Code</label>
                    </td>
                    <td>
                        <input type="text" id="pin_code" runat="server" />&nbsp&nbsp 
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td>
                        <label id="country" runat="server">Country</label>
                    </td>
                    <td>
                        <input type="text" id="count" runat="server" />&nbsp&nbsp 
                    </td>
                    <td>
                        <label id="mob" runat="server">Mobile Number</label>

                        <label id="req11" class="required">*</label>

                    </td>
                    <td>
                        <input type="text" id="mob_num" runat="server" />
                        &nbsp&nbsp 
                    </td>
                    <td>
                        <label id="email" runat="server">Email Id</label>
                        <label id="req12" class="required">*</label>
                    </td>
                    <td>
                        <input type="text" id="email_id" runat="server" />&nbsp&nbsp
                    </td>
                </tr>
                <tr>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                </tr>

            </table>

        </div>
        <br />
        <br>
        <asp:Button ID="Button2" OnClick="verify" runat="server" Text="Submit" Style="font-size: large" />
























        <%--<footer class="footer">
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
  <!-- end footer -->--%>
        <asp:Button ID="Button3" runat="server" Text="Button" />
    </form>
</body>
</html>
