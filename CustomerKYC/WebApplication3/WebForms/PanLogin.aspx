<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PanLogin.aspx.cs" Inherits="WebApplication3.WebForms.PanLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        /* Style the header */
        header {
            background-color: orange;
            padding: 10px;
            text-align: left;
            font-size: 20px;
            color: #791717;
            border-image-width: 10px;
        }

        /* Create two columns/boxes that floats next to each other */
        nav {
            float: left;
            width: 18%;
            height: 470px; /* only for demonstration, should be removed */
            background: white;
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
            width: 70%;
            background-color: #f1f1f1;
            height: 200px; /* only for demonstration, should be removed */
            text-align: unset;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }

        /* Clear floats after the columns */
        section:after {
            content: "";
            display: table;
            clear: both;
            top: 0px;
        }

        /* Style the footer */
        footer {
            background-color: orange;
            padding: 10px;
            text-align: center;
            color: white;
            position: relative;
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
                resize: initial;
                background: #555;
            }

            .header h1 {
                position: relative;
                top: 18px;
            }
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: orange;
            position: relative;
            left: 0px;
        }

        li {
            float: left;
        }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 6px 16px;
                text-decoration: none;
                left: 1500px;
                position: relative;
            }

                li a:hover:not(.active) {
                    background-color: #791717;
                }

        .active {
            background-color: #791717;
        }

        div.vl {
            width: 2px;
            height: 580px;
            position: absolute;
            left: 54%;
            margin-left: -3px;
            top: 15px;
            background-color: orange;
        }
        .content {
    width: 500px;
   text-align:center;
   height: 400px; 
   position: relative;
    top: 100%;
    background: white;
    padding: 30px;
margin-top: -10px; 
margin-left: -10px; 
}




        body {
            overflow-x: hidden;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        <header>
                <div class="header">
                    <img src="../img/nsdlLogo.jpg" width="120" height="120" alt="logo" />
                    <h4>National Securities Depository Limited</h4>
                </div>
            </header>

            <div>
                <ul>
                    <li><a class="active" href="#home">Login</a></li>
                    <li><a href="#news">News</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li><a href="#about">About</a></li>
                </ul>
            </div>
            <section>
                <nav>
                </nav>

                <article>
                    <h3></h3>
                    <br />
                    <p>
                        <h3 style="color: #791717; position: relative;top:10px; left: 100px;">
                        Statement/Application Acceptance Module</p>
                    <br />

                  <%--  <div align="left">
                        <iframe src="LoginFrame.aspx" style="background-color: azure; border-color: orange; position: relative; left: 0%;" height="470" width="500" id="iframe1" name="iframe"></iframe>
                    </div>--%>
                    <div class="content">
        <p><h2 style="color:#791717;">Login!</h2></p>
        <br/><br/>
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label><br/>
        <asp:TextBox ID="TextBox3" runat="server" placeholder="username" style="border-color:#791717;height: 30px; width: 250px;text-align=center;"></asp:TextBox><br/><br/>
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br/>
        <asp:TextBox ID="TextBox4" runat="server" placeholder="password" type="password" style="border-color:#791717;height: 30px; width: 250px;text-align=center;"></asp:TextBox><br/><br/><br/><br/>
        <asp:Button ID="Button3" runat="server" Text="Sign In"  OnClick="Admin_Button1" style="background-color:#791717;color:white;height:30px;width:100px;" />
  
                         </div>

                    <div class="vl">
                    </div>



                </article>

            </section>
            <p>
                <h3 style="position: relative; left: 65%; top: -370px; color: #791717;">National Securities Depository Limited</h3>
            </p>
            <p style="position: relative; left: 65%; top: -340px; bottom: 5000px; color: #791717; font-family: Arial">NSDL Group comprises National Securities Depository Limited (NSDL), and the depository . </p>
            <p style="position: relative; left: 65%; top: -339.9px; bottom: 5000px; color: #791717; font-family: Arial">system, securities are held in depository accounts, which are similar to holding funds in</p>
            <p style="position: relative; left: 65%; top: -339.8px; bottom: 5000px; color: #791717; font-family: Arial">bank accounts Transfer of ownership of securities is done through simple account  </p>
            <p style="position: relative; left: 65%; top: -339.7px; bottom: 5000px; color: #791717; font-family: Arial">NSDL is promoted by Industrial Development Bank of India Limited (IDBI) - the largest  </p>
            <p style="position: relative; left: 65%; top: -339.6px; bottom: 5000px; color: #791717; font-family: Arial">development bank of India, Unit Trust of India (now, Administrator of the Specified   </p>
            <p style="position: relative; left: 65%; top: -339.5px; bottom: 5000px; color: #791717; font-family: Arial">Undertaking of the Unit Trust of India) and National Stock Exchange of India Limited (NSE) - </p>
            <p style="position: relative; left: 65%; top: -339.4px; bottom: 5000px; color: #791717; font-family: Arial">the largest stock exchange in India.[6] Some of the prominent banks in the country have taken</p>
            <p style="position: relative; left: 65%; top: -339.3px; bottom: 5000px; color: #791717; font-family: Arial">a stake in NSDL.</p>
            <footer>
                <img src="../img/IndiaLogo.jpg" width="120" height="120" alt="logo" />

            </footer>
    </div>
    </form>
</body>
</html>
