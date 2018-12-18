<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Master_Page/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplication4.WebPages.Master_Page.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div id="contact" <%--style="background-image: url('images/kiki.jpg')"--%>>
         <div class="container">
             <div class="row" data-aos="fade-up" data-aos-duration="800">
                 <div class="col-md-12">




                    <style>
                        body {
                            background-image: url(../../images/meet.jpg);
                            background-repeat: no-repeat;
                            background-attachment: fixed;
                            background-size: cover;
                        }
                    </style>





                 



                    <br>
                        <h2 style="color: white;">Admin Login</h2>
                    <br>
                    <br>
                    <span style="color: white;">User Name</span><br>
                    <%--<input type="text" name="username" id="TextBox1" />--%><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br>
                    <span style="color: white;">Password</span><br>
                    <%--<input type="password" name="password" id="TextBox2" />--%><asp:TextBox ID="TextBox2" type ="password" runat="server"></asp:TextBox>
                    <br>
                    <br>
                    <!--input type="button" value="Login" id="submit" onclick="validate()" /-->
                    <%--<asp: button type="submit" onclick="Button1_Click" id="submit" class="btn btn-primary px-4">Login</asp:>--%>
                    <%--<asp: Button type= "submit" id="submit" runat="server"  OnClick="Button1_Click"/>--%>



                 
                   <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Admin_Button" style="background-color:orange" />


                 </div>
             </div>
         </div>
     </div>
   
 </asp:Content>






