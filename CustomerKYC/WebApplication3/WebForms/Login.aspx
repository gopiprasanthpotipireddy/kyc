<%@ Page Title="" Language="C#" MasterPageFile="~/WebForms/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication3.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
          <li><a href="index.html">Home</a></li>
          <li>Login</li>
        </ul>
        <h2>LOGIN</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <!-- search -->
        <%--<div class="search-bar">
        
            <fieldset>
              <input type="image" src="img/pixel.gif" class="searchsubmit" alt="" />
              <input type="text" class="search_text showtextback" name="s" id="s" value="Search..." />
            </fieldset>
        
        </div>--%>
        <!-- / end div .search-bar -->
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->

  <section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
        <div class="col-lg-6 col-md-6 col-sm-12">
          <h4 class="title">
                    	<span>Welcome !</span>
                    </h4>
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s.</p>
          <p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
          <p class="withpadding">Still not registered? <a href="#">Click Here</a> to register now.</p>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12">
          <h4 class="title">
                    	<span>Login Form</span>
                    </h4>
          
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <%--<input type="text" class="form-control" id="TextBox" runat="server" placeholder="Username">--%>
                  <asp:TextBox id ="TextBox1" class="form-control" runat="server" placeholder="Username" Style="height: 30px; width: 200px;"></asp:TextBox>
              </div>
            </div>
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <%--<input type="password" class="form-control" id="TextBox2" runat="server" placeholder="Password">--%>
              <asp:TextBox id ="TextBox2" type="password" class="form-control" runat="server" placeholder="password" Style="height: 30px; width: 200px;"></asp:TextBox>
              </div>
            </div>
            <div class="form-group">
              <div class="checkbox">
                <label>
                  <input type="checkbox"/> Remember me
                </label>
              </div>
            </div>
            <div class="form-group">
              <asp:button type="submit" id="button" runat="server"   OnClick ="Admin_Button" class="button" text="Login In"></asp:button>
            </div>
            
          
        </div>
        <!-- end login -->
      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
</asp:Content>
