<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aadhariframe.aspx.cs" Inherits="WebApplication3.WebForms.Aadhariframe" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type = "text/javascript" >
      function preventBack(){window.history.forward();}
        setTimeout("preventBack()", 0);
        window.onunload=function(){null};
    </script>
    <style>
        /*/* Style the tab */


        input[type="text"] {
            width: 200px;
        }

        .main {
            margin-left: 200px;
            margin-right: 100px; /* Same as the width of the sidenav */
        }

        .button {
            background-color: #0f3f6a;
            /*background-image:-o-linear-gradient(top,#39ad13,#39ad13);
            background-image:linear-gradient(rgb(57, 173, 19), rgb(57, 173, 19));*/
            width: 200px;
            height: 50px;
        }

        .content {
            width: 500px;
            text-align: center;
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

            #Aadhartable tr td {
                padding: 30px;
            }

            #Aadhartable tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            #Aadhartable tr:hover {
                background-color: #ddd;
            }

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
            padding-top: 100px;
            text-align: left;
        }

            /* Style the list inside the menu */
            nav ul {
                list-style-type: none;
                padding-bottom: 70px;
            }

        article {
            float: left;
            padding: 20px;
            width: 60%;
            background-color: white;
            height: 500px; /* only for demonstration, should be removed */
        }
        /* Clear floats after the columns */
        section:after {
            content: "";
            display: table;
            clear: both;
            top: 0px;
        }

        footer {
            background-color: #0f3f6a;
            padding: 10px;
            text-align: center;
            color: white;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #0f3f6a;
        }

        li {
            float: right;
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
    </style>
</head>
<body>

    <form id="formid" runat="server">
        <header>
            <h3 style="text-align: left; color: white; top: 70px;" id="Aadharhead">Aadhar Verification
                <img src="../img/Aadharsymbol.jpg" width="90" height="50" /></h3>
        </header>
        <div>
            <ul>


                <li><a href="#contact">Contact</a></li>
                <li><a href="AadharLogout.aspx">Logout</a></li>
                <li><a href="#about">About</a></li>
            </ul>
        </div>
        <section>
            <nav>
                <ul>
                    <li><a href="#">Digital Signature Certificate (DSC)</a></li>
                    <br />
                    <br />
                    <li><a href="#">System pre-requisite for registration/post-login</a></li>
                    <br />
                    <br />
                    <li><a href="#">Procedure for Registration</a></li>
                    <br />
                    <br />
                    <li><a href="#">Procedure for change of DSC</a></li>
                    <br />
                    <br />
                    <li><a href="#">Procedure for Renewal of Aadhar Verification Facility</a></li>
                    <br />
                    <br />
                    <li><a href="#">Registration Status Track</a></li>
                    <br />
                    <br />
                    <li><a href="#">Authorisation</a></li>
                    <br />
                    <br />
                    <li><a href="#">Procedure for upload of file</a></li>
                    <br />
                    <br />
                    <li><a href="#">Procedure for Advance Addition</a></li>


                </ul>
            </nav>

            <article>


                <iframe height="750" width="1500" id="iframeAdhar" name="iframe" src="AadharDetails.aspx"></iframe>

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
            <img src="../img/Aadharsymbol.jpg" width="90" height="50" />
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
