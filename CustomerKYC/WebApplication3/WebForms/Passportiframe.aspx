<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Passportiframe.aspx.cs" Inherits="WebApplication3.WebForms.Passportiframe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
.header {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color:cornflowerblue;
  padding: 10px;
  text-align: center;
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
  background-color:cornflowerblue;
  /*padding: 10px;*/
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
  width: 100%;
  height: 90%;
  resize:initial;
  background: #555;
  
  
}

.header h1 {
  position: center;
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
                <img src="../img/Passportimg.png" width="120" height="120" alt="logo" />
                <h1>PassPort Verification</h1>
            </div>
           
            <div style="text-align:right">
                <ul>
                    
                                <div><a href="PassPortLogin.aspx" >Logout</a></div>
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
                    <li><a href="#">Procedure for Renewal of PassPort Verification Facility</a></li>
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
                <h2 style="color:#791717;">PassPort Information Network</h2>
                <p>A passport is a travel document, usually issued by a country's government, that certifies the identity and nationality of its holder primarily for the purpose of international travel.</p>
                <br/>
                
                <p>*Passports are often requested in other circumstances to confirm identification such as checking in to a hotel or when changing money to a local currency</p>
                
                <br/>
               <iframe height="500" width="1339" style="border-color:cornflowerblue;"id="iframepassport" name="ifr1" src="PassportDetails.aspx"></iframe>

                
            </article>

        </section>
       

        <footer>
            <img src="../img/Passportimg2.PNG" width="120" height="120" alt="logo" />
            
        </footer>
    </div>
    </form>
</body>
</html>
