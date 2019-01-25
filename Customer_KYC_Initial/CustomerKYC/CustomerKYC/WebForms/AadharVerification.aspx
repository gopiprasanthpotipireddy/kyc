<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AadharVerification.aspx.cs" Inherits="CustomerKYC.WebForms.AadharVerification" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
     /* Style the tab */
        .tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #0f3f6a;
        }

            /* Style the buttons inside the tab */
            .tab button {
                background-color:#0f3f6a;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 10px 20px;
                transition: 0.3s;
                font-size: 17px;
            }

                /* Change background color of buttons on hover */
                .tab button:hover {
                    background-color: black;
                }

                /* Create an active/current tablink class */
                .tab button.active {
                    background-color: black;
                }
               

        /* Style the tab content */
        .tabcontent {
            display: none;
            padding: 6px 12px;
            -webkit-animation: fadeEffect 1s;
            animation: fadeEffect 1s;
        }
       
        
        input[type="text"] {
         width: 200px;
     }
        .main {
            margin-left: 200px;
            margin-right:100px; /* Same as the width of the sidenav */
        }
        .button{
              background-color:#0f3f6a;
            /*background-image:-o-linear-gradient(top,#39ad13,#39ad13);
            background-image:linear-gradient(rgb(57, 173, 19), rgb(57, 173, 19));*/
            width:200px;
            height:50px;
            
        }
        .content {
    width: 500px;
   text-align:center;
height: 500px; 
position: absolute;
top: 30%;
left: 40%;
background: white;
padding: 10px;
margin-top: -100px; 
margin-left: -150px; 
}
        #Aadhartable {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#Aadhartable tr td{
  padding:30px;
}
#Aadhartable tr:nth-child(even){background-color: #f2f2f2;}
#Aadhartable tr:hover {background-color: #ddd;}
       
        /*.usernameLabel{
           font-size:x-large;
            font-family:Calibri;
        }*/
        * {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
   header {
            background-color: #0f3f6a;
            padding: 2px;
            text-align: left;
            font-size: 35px;
            color: #0f3f6a;
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
  background-color:white;
  height: 750px; /* only for demonstration, should be removed */
}
/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
  top:0px;
}
footer {
  background-color:#0f3f6a;
  padding: 10px;
  text-align: center;
  color: white;
}
        </style>
</head>
<body>
   
    <form runat="server" >
     <header>
            <h3 style="text-align: left; color: white; top: 70px;" id="Aadharhead">Aadhar Verification
                <img src="../img/Aadharsymbol.jpg" width="90" height="50" /></h3>
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
                    <li><a href="#">Procedure for Renewal of Aadhar Verification Facility</a></li>
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
                <h2 style="color:#791717;">Aadhar</h2>
                <p>Aadhaar is an individual identification number issued by the Unique Identification Authority of India (UIDAI) on behalf of the Government of India to individuals for the purpose of establishing the unique identity of every single person.</p>
                <br/>
                <p>The Aadhar number will serve as a proof of identity and address anywhere in India.</p>
                
                <p>Aadhaar is meant for individuals of any age (including children) for the purpose of establishing identities.</p>
                <p> Aadhaar is for individuals, therefore each member of the family needs to have a separate one.</p>
                <p>An individual will be provided with only one unique Aadhaar number and not multiple unique ID numbers.</p>
                <br/>
                <p><h3 style="color: #0f3f6a;text-align:center;">Verify Aadhar Number:</h3></p>
                <p style="text-align:center;">Enter the Aadhar number here</p>
                <%--<div style="text-align:center;"><asp:TextBox id="TextBox3" runat="server"Placeholder="PAN number" type="text" name="userid" id="userid"></div>--%>

                <div align="center">
               <input type="text" id="AadharNumber" runat="server" />
              <asp:Button ID="VerifyButton" class="button" runat="server" Text="Verify" style ="color:white;font-size:large;" onclick ="verify" />
              </div>

                
            </article>

        </section>

       
        <%-- <div id ="content1" >
             <div class="main">
               
                  <div class="content">
      <h1 style="text-align:center; color:black;" id="LoginHead">Aadhar Verification</h1>
        <table id="Aadhartable">
      

  <tr>
   <td  style="text-align:left"><label  id="AadharLabel" runat="server" style="font-size:20px;" runat="server" >Enter Aadhaar Number:</label></td>
    <td> <input type="text" id="AadharNumber" runat="server" /> </td>
  </tr>
          
 <tr>
     <td><asp:Button ID="VerifyButton" class="button" runat="server" Text="Verify" style ="color:white;font-size:large;" onclick ="verify" /></td>
     </tr>
 
</table>
        

    </div>
                 </div>
         </div>--%>
        <footer>
  <%--<p>Footer</p>--%>
            <img src="../images/Aadharsymbol.jpg" width="90" height="50" />
</footer>
    </form>
 
</body>
    <%-- <script>
         
    function openCity(evt, cityName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(cityName).style.display = "block";
        evt.currentTarget.className += " active";
    }
</script>--%>
</html>
