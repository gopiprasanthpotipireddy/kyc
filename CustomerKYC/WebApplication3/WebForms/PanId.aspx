<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanId.aspx.cs" Inherits="WebApplication3.WebForms.PanId" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color:orange;
  padding: 10px;
  text-align: left;
  font-size: 20px;
  color:#791717;
  border-image-width:10px;
 
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 18%;
  height: 800px; /* only for demonstration, should be removed */
  background: #ccc;
  padding-top:100px;
  text-align:left;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding-bottom: 70px;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 300px; /* only for demonstration, should be removed */
  text-align:unset;
  font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
 
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
  top:0px;
}

/* Style the footer */
footer {
  background-color:orange;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }

.header img {
  float: left;
  width: 20%;
  height: 20%;
  resize:initial;
  background: #555;
  
  
}

.header h1 {
  position: relative;
  top: 18px;
  
}

}

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
         <div>

            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook"></i></a>
            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter"></i></a>
            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Google+"><i class="fa fa-google-plus"></i></a>
            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Dribbble"><i class="fa fa-dribbble"></i></a>
            <a href="#" data-toggle="tooltip" data-placement="bottom" title="RSS"><i class="fa fa-rss"></i></a>

        </div>


        <header>
            <div class="header">
                <img src="../img/nsdlLogo.jpg" width="120" height="120" alt="logo" />
                <h4>National Securities Depository Limited</h4>
            </div>
            <h3></h3>
             <div style="text-align:right">
                <ul>
                    <%--<asp:LinkButton ID="LinkButton1" runat="server" OnClick="Logout">Logout</asp:LinkButton>--%>
<%--                                <div><a href="PanLogin.aspx" >Logout</a></div>--%>
               </ul>
                 
               </div>
        </header>
          
          

        <section>
            <nav>
                <ul>
                    <li><a href="#">Digital Signature Certificate (DSC)</a></li>
                    <br/>
                     <br/>
                    <li><a href="#">System pre-requisite for registration/post-login</a></li>
                    <br/>
                     <br/>
                    <li><a href="#">Procedure for Registration</a></li>
                     <br/>
                     <br/>
                    <li><a href="#">Procedure for change of DSC</a></li>
                     <br/>
                     <br/>
                    <li><a href="#">Procedure for Renewal of PAN Verification Facility</a></li>
                     <br/>
                     <br/>
                    <li><a href="#">Registration Status Track</a></li>
                     <br/>
                     <br/>
                    <li><a href="#">Authorisation</a></li>
                     <br/>
                     <br/>
                    <li><a href="#">Procedure for upload of file</a></li>
                     <br/>
                     <br/>
                    <li><a href="#">Procedure for Advance Addition</a></li>


                </ul>
            </nav>

            <article>
                <h2 style="color:#791717;">Tax Information Network</h2>
                <p>To enable eligible Entities verify Permanent Account Numbers (PANs), Income Tax Department (ITD) has authorized NSDL e-Governance Infrastructure Limited (NSDL e-Gov ) to launch an online PAN verification service for verification of PANs by authorized entities.</p>
                <br/>
                <p><h4>Entities who can avail of this facility:</h4></p>
                
                <p>* Insurance Web Aggregators</p>
                <p>* Non Banking Financial Companies approved by RBI</p>
                <p>* Prepaid Payment Instrument Issuers approved by RBI</p>
                <br/>
                <p><h3 style="color:#791717;text-align:center;">Verify PAN-ID:</h3></p>
                <p style="text-align:center;">Enter the PAN number here</p>
                <%--<div style="text-align:center;"><asp:TextBox id="TextBox3" runat="server"Placeholder="PAN number" type="text" name="userid" id="userid"></div>--%>

                <div align="center">
                <asp:TextBox id ="TextBox5"  runat="server"  placeholder="PAN Number"  style="border-color:#791717;height: 30px; width: 250px;text-align=center;" ></asp:TextBox>
                    <br/><br/>
                    <asp:Button ID="Button2" runat="server" onclick="verification" Text="Verify" style="height:30px;width:100px;background-color:#791717;color:white;"/>
              </div>

                
            </article>

        </section>

        <footer>
            &nbsp;<img src="../img/IndiaLogo.jpg" width="120" height="120" alt="logo" /></footer>

    </div>
    </form>
</body>
</html>
