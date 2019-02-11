<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication3.WebForm1" %>
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
     
  <section id="intro">
    <div class="container">
      <div class="ror">
        <div class="col-md-8 col-md-offset-2">
          <h1>Global Economic Growth concerns weigh on our PrimeBank</h1>
          <p>Improve efficiency, outpace competitors and drive growth with solutions from IHS Markit. We combine information, analytics and expertise to help you see why things happen and focus on what matters. That's why 50,000+ organizations, including 80% of the Fortune Global 500, rely on our insights.</p>
         <br />
            <br />
            <div class="form-group">
              <div class="input-group"  style="position:relative;padding-left:120px;">
                <%--<span class="input-group-addon"><i class="fa fa-user"></i></span>--%>
                <%--<input type="text" class="form-control" id="TextBox" runat="server" placeholder="Username">--%>
                  <asp:TextBox id ="TextBox1" class="form-control" runat="server" placeholder="Username" Style="height: 30px; width: 200px;"></asp:TextBox>
              </div>
            </div>
            <div class="form-group">
              <div class="input-group" style="position:relative;padding-left:120px;">
                <%--<span class="input-group-addon"><i class="fa fa-lock"></i></span>--%>
                <%--<input type="password" class="form-control" id="TextBox2" runat="server" placeholder="Password">--%>
              <asp:TextBox id ="TextBox2" type="password" class="form-control" runat="server" placeholder="password" Style="height: 30px; width: 200px;"></asp:TextBox>
              </div>
            </div>
           <%-- <div class="form-group">
              <div class="checkbox"  style="position:relative;padding-right:200px;">
                <label>
                  <input type="checkbox"/> Remember me
                </label>
              </div>
            </div>--%>
            <div class="form-group"style="position:relative;padding-right:80px; ">
              <asp:button type="submit" id="button" runat="server" OnClick ="Admin_Button" class="button" text="Login In"></asp:button>
            </div>
            
        </div>
      </div>
    </div>
  </section>


  <section class="section1">
    <div class="container">
      <div class="col-lg-4 col-md-4 col-sm-4">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-left">
              <a href="#" class=""> <i class="active dm-icon fa fa-bars fa-3x"></i> </a>
            </div>
            <div class="servicetitle">
              <h4>Personal Loan</h4>
              <hr>
            </div>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since..</p>
          </div>
          <!-- service-icon -->
        </div>
        <!-- servicebox -->
      </div>
      <!-- large-4 -->

      <div class="col-lg-4 col-md-4 col-sm-4">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-bottom">
              <a href="#" class=""> <i class="active dm-icon fa fa-laptop fa-3x"></i> </a>
            </div>
            <div class="servicetitle">
              <h4>Credit card</h4>
              <hr>
            </div>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since..</p>
          </div>
          <!-- service-icon -->
        </div>
        <!-- servicebox -->
      </div>
      <!-- large-4 -->

      <div class="col-lg-4 col-md-4 col-sm-4">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-right">
              <a href="#" class=""> <i class="active dm-icon fa fa-book fa-3x"></i> </a>
            </div>
            <div class="servicetitle">
              <h4>Calculator</h4>
              <hr>
            </div>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since..</p>
          </div>
          <!-- service-icon -->
        </div>
        <!-- servicebox -->
      </div>
      <!-- large-4 -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
  <section class="section4 text-center">
    <div class="general-title">
      <h3>OUR BEST PRODUCTS</h3>
      <hr/>
    </div>
   
    <!-- end portfolio-wrapper -->
    <a class="button large" href="home3.html#">VIEW ALL WORKS</a>
  </section>
  <!-- end section1 -->
     
</asp:Content>
