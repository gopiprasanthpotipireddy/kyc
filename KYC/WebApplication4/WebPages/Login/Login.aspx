<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Master_Page/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication4.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<header class="banner">
        <div class="gradient"></div>
       
    </header>--%>







     <div id="contact" <%--style="background-image: url('images/kiki.jpg')"--%>>
         <div class="container">
             <div class="row" data-aos="fade-up" data-aos-duration="800">
                 <div class="col-md-12">
                    




                     <style>
                         body{
                             background-image: url(../../images/banner-3.jpg);
                             background-repeat:no-repeat;
                             background-attachment:fixed;
                             background-size:cover;
                             




                         
                         }
                         </style>




                    <h2 style="color: white;text-align-last:left;">KYC  PORTAL</h2>
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
                      <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Login_Button" style="background-color:orange"/><br />




                    <h3 style="color: white; align-content :flex-start ;text-align:center"> BENEFITS OF KYC </h3><br>
                     <p style="color: white;"> OpsRamp Markit supports our customers during every stage of their KYC and due diligence journey with our connected set of operational risk and regulatory compliance solutions. Our KYC Services include a broad set of capabilities to meet your specific needs and address a wide spectrum of requirements. As a bank subscriber, you benefit from the validation of publicly sourced and client-provided entity data using defined industry standard KYC policies to complete management of KYC processes. Our buy-side and corporate contributors, in turn, can quickly and easily upload their KYC profiles, retain control over their data and reuse this information to fulfill additional requests from their counterparts.</p>




                </div>
             </div>
         </div>
     </div>
    <%-- <script>
         //$(document).on('click', '[data-toggle="lightbox"]', function (event) {
         //    event.preventDefault();
         //    $(this).ekkoLightbox();
         //});
         var attempt = 3;
         //function opr() {




        //    var username = document.getElementById("username").value;
         //    var password = document.getElementById("password").value;
         //    if (username == "Forget" && password == "forget#123") {
         //        alert("Login successfully");
         //        window.location.assign("Options.aspx");// Redirecting to other page.
         //        //Response.Redirect("Options.aspx");
         //        return false;
         //    }
         //    else {
         //        attempt--;// Decrementing by one.
         //        alert("You have left " + attempt + " attempt;");
         //        // Disabling fields after 3 attempts.
         //        if (attempt == 0) {
         //            document.getElementById("username").disabled = true;
         //            document.getElementById("password").disabled = true;
         //            document.getElementById("submit").disabled = true;
         //            return false;
         //        }
         //    }
         //}























         var password1 = "welcome";
         function validate() {
             var username = document.getElementById("username").value;
             if (username == null || username == "") {
                 alert("Username cannot be empty");
             }
             var password = document.getElementById("password").value;




            if (password == null || password == "") {
                 alert("password cannot be empty");
             }




            else {
                 if (username == "welcome" && password == password1) {
                     alert("Login successfully");
                     //window.location.href = "~/WebApplication4/Options.aspx"; // Redirecting to other page.
                     //Response.Redirect("Options.aspx");
                     window.location.assign("Options.aspx");
                     return true;
                 }
                 else {
                     attempt--;// Decrementing by one.
                     alert("You have left " + attempt + " attempt;");
                     // Disabling fields after 3 attempts.
                 }
             }
             if (attempt == 0) {
                 document.getElementById("username").disabled = true;
                 document.getElementById("password").disabled = true;
                 document.getElementById("submit").disabled = true;
                 return false;
             }




            var input = document.getElementById("username");
             var input1 = document.getElementById("password");
             input.addEventListener("keyup", function (event) {
                 event.preventDefault();
                 if (event.keyCode == 13) {
                     document.getElementById("submit").click();
                 }
             });











         }




//function validate1() {
 //    var box = document.createElement("input");
 //    box.type = "text";
 //    box.value = boxValue;
 //    box.id = boxID;
 //    password1 = document.getElementById(boxID);
 //    boxObject.style.backgroundColor = "red";
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
 //}
 </script>--%>
 </asp:Content>