<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site1.Master" AutoEventWireup="true" CodeBehind="iframe.aspx.cs" Inherits="WebApplication3.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
     
 <div>
    

<%--<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

    .active {
        background-color: #4CAF50;
    }

.footer{
    height:10%;
    padding:10px;
}

</style>--%>



<%--<ul>
  
  <li><a href="#contact">PortFolio</a></li>
  <li><a href="Submits.aspx">ViewSubmits</a></li>
</ul>--%>

      <!-- SIDEBAR -->
     <style>
         #sidebar{
             position:relative;
             width:13%;
         }
     </style>
      <div id="sidebar" class="col-lg-4 col-md-4 col-sm-4 col-xs-12" >

        <div class="widget">
          <h4 class="title">
                        <span ><h3 style="color:#3498db;">View Submissions</h3></span>
                    </h4>

         <%-- <form id="subscribe"  name="subscribe" action="iframe.aspx" method="post">--%>
            <p><h3 style="color:black;font-family:'Times New Roman', Times, serif;">Please click here to view your previously submitted records.</h3></p>
              <%--<input type="text" name="name" id="name" class="form-control" placeholder="Name">
            <input type="text" name="email" id="email" class="form-control" placeholder="Email">--%>
            <div class="pull-right" align="center">
              <%--<input type="submit" value="NewCase" style="position:center;" id="submit" class="button">--%>
<%--      <asp:Button ID="submit" runat="server" Text="View Submissions" onclick="demo1" CssClass="button" style="position:center;" />--%>
                      </div>
      
          <%--</form>--%>
        </div>

        <div class="widget">
          <h4 class="title">
                    	<span style="color:#3498db;">WatchList Verification</span>
                    </h4>
          <div class="tabbable">
            <ul class="nav nav-tabs">
              <li class="active"><a href="left-sidebar.html#recent" data-toggle="tab">Govt.</a></li>
              <li><a href="left-sidebar.html#popular" data-toggle="tab">Private</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="recent">
                <ul class="recent_posts">
                  <li>
                    <a href="PanLogin.aspx" target="_blank">
                                    <img src="../img/nsdlLogo.jpg" alt="" />Link to verify PAN-id:
                                    </a>
                    <a class="readmore" href="#">read more</a>
                  </li>
                  <li>
                    <a href="AadharLogin.aspx" target="_blank">
                                    <img src="../img/Aadharsymbol.jpg" alt="" />Link to verify Aadhar:
                                    </a>
                    <a class="readmore" href="#">read more</a>
                  </li>
                     <li>
                    <a href="PassPortLogin.aspx" target="_blank">
                                    <img src="../img/Passportimg.png" alt="" style="height:70px" />Link to verify Passport:
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


        

       

      </div>
      <!-- end sidebar -->




<%-- <div >
         
     <asp:Button runat="server" ID="viewSubmits" onclick="demo1" Text="View Submissions" style="background-color:#3498db;color:white;position:relative;left:83%;font-size:small;"></asp:Button>   
    </div>
</div>  --%>  
      
 
     <div class="main">
      <iframe name ="iframe"  id="iframe"   src="Registration.aspx" height="800" width="1400"style="position:relative;left:2%;align-self:center;border-color:#3498db;"></iframe>

  </div>
</asp:Content>
