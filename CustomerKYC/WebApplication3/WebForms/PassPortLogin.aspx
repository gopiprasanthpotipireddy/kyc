<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PassPortLogin.aspx.cs" Inherits="WebApplication3.WebForms.PassPortLogin" %>

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
            background-color: cornflowerblue;
            padding: 5px;
            text-align: center;
            font-size: 20px;
            color: black;
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
            background-color: white;
            height: 50px; /* only for demonstration, should be removed */
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
            background-color: cornflowerblue;
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
                align :left;
                float: left;
                width: 60%;
                height: 50%;
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
            background-color: cornflowerblue;
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
                    background-color: black;
                }

        .active {
            background-color: black;
        }

        div.vl {
            width: 2px;
            height: 580px;
            position:center;
            left: 94%;
            margin-left: -3px;
            padding:2px;
            bottom:70px;
            background-color: cornflowerblue;
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
                    <img src="../img/Passportimg2.PNG" width="120" height="120" alt="logo"  />
                    <h1 >Passport Seva</h1>
                    <h4>Ministry of External Affairs, Government of India</h4>
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
                   <%-- <p>
                        <h3 style="color: black; position: relative;top:10px; left: 100px;">
                        Statement/Application Acceptance Module</p>--%>
                    <br />

                  <%--  <div align="left">
                        <iframe src="LoginFrame.aspx" style="background-color: azure; border-color: orange; position: relative; left: 0%;" height="470" width="500" id="iframe1" name="iframe"></iframe>
                    </div>--%>
                    <div class="content">
        <p><h2 style="color:black;">Login!</h2></p>
        <br/><br/>
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label><br/>
        <asp:TextBox ID="Text_Box1" runat="server" placeholder="username" style="border-color:black;height: 30px; width: 250px;text-align=center;"></asp:TextBox><br/><br/>
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br/>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="password" type="password" style="border-color:black;height: 30px; width: 250px;text-align=center;"></asp:TextBox><br/><br/><br/><br/>
        <asp:Button ID="Button3" runat="server" Text="Sign In"  OnClick="Admin_Button" style="background-color:cornflowerblue;color:white;height:30px;width:100px;" />
  
                         </div>

                    <%--<div class="vl">
                    </div>--%>



                </article>

            </section>
            <p>
                <h3 style="position: relative; left: 55%; top: -370px; color: black;">Consular, Passport & Visa Division</h3>
            </p>
            <p style="position: relative; left: 55%; top: -339.9px; bottom: 5000px; color: black; font-family: Arial">In recent years,the Government of India has taken many initiatives to improve the delivery of public services.</p>
            <p style="position: relative; left: 55%; top: -339.8px; bottom: 5000px; color: black; font-family: Arial">A Passport is an essential travel document for those who are traveling abroad for any purpose  </p>
            <p style="position: relative; left: 55%; top: -339.8px; bottom: 5000px; color: black; font-family: Arial">Passport Seva enables simple, efficient and transparent processes for delivery of passport and related services</p>
            <p style="position: relative; left: 55%; top: -339.8px; bottom: 5000px; color: black; font-family: Arial">The passport demand is estimated to be growing by around 10% annually.   </p>
            <p style="position: relative; left: 55%; top: -339.8px; bottom: 5000px; color: black; font-family: Arial">This increased demand for passport and related services is coming from both large cities and smaller towns</p>
           
            <footer>
                <img src="../img/Passportimg.png" width="120" height="120" alt="logo" />

            </footer>
    </div>
    </form>
</body>
</html>
