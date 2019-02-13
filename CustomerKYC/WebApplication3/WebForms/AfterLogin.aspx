<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site1.Master" AutoEventWireup="true" CodeBehind="AfterLogin.aspx.cs" Inherits="WebApplication3.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type = "text/javascript" >
      function preventBack(){window.history.forward();}
        setTimeout("preventBack()", 0);
        window.onunload=function(){null};
    </script> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
    #viewSubmits
    {
        display:none;
    }
     </style>
     <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="Home.aspx">Home</a></li>
          <li>Admin</li>
        </ul>
        <h2>Welcome Admin..!!</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <!-- search -->
        <div class="search-bar">
<asp:Button ID="Button1" runat="server" Text="LogOut" OnClick="Logout" Style="background-color: #3498db; height: 40px; width: 200px; color:white;" />

            <%--<fieldset>
              <input type="image" src="img/pixel.gif" class="searchsubmit" alt="" />
              <input type="text" class="search_text showtextback" name="s" id="s" value="Search..." />
            </fieldset>--%>
         
        </div>
        <!-- / end div .search-bar -->
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->

  <section class="section1">
    <div class="container clearfix">
      <div class="content pull-right col-lg-8 col-md-8 col-sm-8 col-xs-12 clearfix">
        <h2>Know Your Customer</h2>
        <p> KYC policies have been expanding for some time and they have become very important globally. With issues pertaining to corruption, terrorist financing, and money laundering becoming so prevalent, KYC policies have now evolved into an important tool to combat illegal transactions in the international finance field. KYC allows companies to protect themselves by ensuring that they are doing business legally and with legitimate entities, and it also protects the individuals who might otherwise be harmed by financial crime.</p>
        <img class="img-resposnive" src="../img/hello.png" alt="" />

        <p> Integer convallis justo augue, et condimentum tortor scelerisque ut. Ut mattis ullamcorper lacinia. Donec dignissim eu dui non ultrices. Fusce ullamcorper suscipit ante, eget ultrices ipsum faucibus sagittis. Nunc eu elit orci. Etiam id orci vitae
          mauris bibendum molestie sit amet sed neque. Cras malesuada vulputate orci sed molestie. Phasellus accumsan nunc sit amet egestas suscipit. Duis non ipsum ac risus consequat dapibus placerat sed dui. Sed vitae risus scelerisque purus euismod
          ornare. Phasellus ultricies ante vitae molestie adipiscing. </p>
        <div class="clearfix"></div>
        <blockquote>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
        </blockquote>
        <div class="clearfix"></div>
        <p>Sed rutrum ac leo vel aliquet. Fusce vehicula orci vitae dui posuere, ac luctus tortor aliquam. Morbi ac cursus est. Nam arcu risus, tristique fringilla auctor luctus, congue id felis. Donec at semper turpis. Vivamus id tellus quis massa gravida
          viverra a vitae urna. Integer facilisis aliquet velit a egestas. Pellentesque orci dui, rutrum ac nulla eget, laoreet sollicitudin nunc. Aliquam vel mollis turpis. Cras vitae sodales felis. Aliquam semper tincidunt nunc. Nullam tempor ipsum
          purus, at commodo orci volutpat ac. Vivamus scelerisque nunc felis, nec euismod arcu gravida sed. Etiam tempus, purus posuere molestie blandit, tortor felis iaculis nisl, ac rhoncus nisi ipsum a enim. </p>
        <blockquote class="pull-right">
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
          <small>Someone famous in <cite title="Source Title">Source Title</cite></small>
        </blockquote>
        <div class="clearfix"></div>
        <p>Integer convallis facilisis est, non vehicula ligula tincidunt ac. Curabitur dignissim quam mollis purus rhoncus imperdiet. Aliquam erat volutpat. Duis tempor vestibulum erat, in condimentum eros dignissim at. Maecenas elementum tortor nulla,
          a suscipit mi tincidunt id. Morbi id felis luctus, aliquet neque cursus, aliquam leo. Pellentesque vel justo tincidunt, pulvinar justo id, vulputate tortor. </p>
      </div>
      <!-- end content -->


      <!-- SIDEBAR -->
      <div id="sidebar" class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

        <div class="widget">
          <h4 class="title">
                        <span ><h3 style="color:#3498db;">New case</h3></span>
                    </h4>

         <%-- <form id="subscribe"  name="subscribe" action="iframe.aspx" method="post">--%>
            <p><h3 style="color:black;font-size:medium;">Please click here to intiate KYC for a new client.</h3></p>
              <%--<input type="text" name="name" id="name" class="form-control" placeholder="Name">
            <input type="text" name="email" id="email" class="form-control" placeholder="Email">--%>
            <div class="pull-right" align="center">
              <%--<input type="submit" value="NewCase" style="position:center;" id="submit" class="button">--%>
      <asp:Button ID="submit" runat="server" Text="NewCustomerRegistration" OnClick="NewCase" CssClass="button" style="position:center;color:" target="_blank"/>
                      </div>
            
      
          <%--</form>--%>
        </div>

        <div class="widget">
          <h4 class="title">
                    	<span>Recent Posts</span>
                    </h4>
          <div class="tabbable">
            <ul class="nav nav-tabs">
              <li class="active"><a href="left-sidebar.html#recent" data-toggle="tab">Recent</a></li>
              <li><a href="left-sidebar.html#popular" data-toggle="tab">Popular</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="recent">
                <ul class="recent_posts">
                  <li>
                    <a href="AadharLogin.aspx" target="_blank">
                                    <img src="../img/Aadharsymbol.jpg" alt="" />AadharLogin Is Here
                                    </a>
                    <a class="readmore" href="#">read more</a>
                  </li>
                  <li>
                    <a href="PanLogin.aspx" target="_blank">
                                    <img src="../img/nsdlLogo.jpg" alt="" />PanLogin Is Here
                                    </a>
                    <a class="readmore" href="#">read more</a>
                  </li>
                    <li>
                    <a href="PassPortLogin.aspx" target="_blank">
                                    <img src="../img/Passportimg.png" style="height:70px" alt="" />PassPortLogin Is Here
                                    </a>
                    <a class="readmore" href="#">read more</a>
                  </li>
                </ul>
                <!-- recent posts -->
              </div>
              <div class="tab-pane" id="popular">
                <ul class="recent_posts">
                  <li>
                    <a href="#">
                                    <img src="../img/flickr_01.jpg" alt="" />Blog Post With Image
                                    </a>
                    <a class="readmore" href="#">read more</a>
                  </li>
                  <li>
                    <a href="#">
                                    <img src="../img/flickr_02.jpg" alt="" />Another Recent Post with Image
                                    </a>
                    <a class="readmore" href="#">read more</a>
                  </li>
                </ul>
                <!-- recent posts -->
              </div>
            </div>
          </div>
          <!-- tabbable -->
        </div>
        <!-- end widget -->


        <div class="widget">
          <h4 class="title">
                        <span>Categories</span>
                    </h4>
          <ul class="categories">
            <li><a href="#">Logo Design</a></li>
            <li><a href="l#">Web Design</a></li>
            <li><a href="#">WordPress</a></li>
            <li><a href="#">HTML5 & CSS3</a></li>
            <li><a href="#">Other Works</a></li>
          </ul>
        </div>

        <div class="widget">
          <h4 class="title">
                        <span>Pages</span>
                    </h4>
          <ul class="pages">
            <li><a href="#">Homepage</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">Portfolio</a></li>
            <li><a href="#">Shopping</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </div>

        <div class="widget">
          <h4 class="title">
                        <span>Tags</span>
                    </h4>

          <div class="tagcloud">
            <a href="#" class="" title="12 topics">advice</a>
            <a href="#" class="" title="2 topics">wordpress</a>
            <a href="#" class="" title="21 topics">joomla</a>
            <a href="#" class="" title="5 topics">blog</a>
            <a href="#" class="" title="62 topics">cms</a>
            <a href="#" class="" title="12 topics">drupal</a>
            <a href="#" class="" title="88 topics">html5</a>
            <a href="#" class="" title="15 topics">css3</a>
            <a href="#" class="" title="31 topics">orange</a>
            <a href="#" class="" title="16 topics">love to</a>
            <a href="#" class="" title="32 topics">tutorials</a>
            <a href="#" class="" title="12 topics">how to</a>
            <a href="#" class="" title="44 topics">advice</a>
          </div>
        </div>

      </div>
      <!-- end sidebar -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->


</asp:Content>
