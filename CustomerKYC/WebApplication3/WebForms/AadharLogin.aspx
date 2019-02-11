<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AadharLogin.aspx.cs" Inherits="WebApplication3.WebForms.AadharLogin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type = "text/javascript" >
      function preventBack(){window.history.forward();}
        setTimeout("preventBack()", 0);
        window.onunload=function(){null};
    </script>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        /* Style the header */
        header {
            background-color: #0f3f6a;
            padding: 10px;
            text-align: left;
            font-size: 20px;
            color: #0f3f6a;
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
            background-color: #0f3f6a;
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
            background-color: #0f3f6a;
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
                    background-color: #0f3f6a;
                }

        .active {
            background-color: #0f3f6a;
        }

        div.vl {
            width: 2px;
            height: 580px;
            position: absolute;
            left: 54%;
            margin-left: -3px;
            top: 15px;
            background-color: #0f3f6a;
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

                    <h3 style="text-align: left; color: white; top: 70px;" id="Aadharhead">Aadhar Verification
                     <img src="../img/Aadharsymbol.jpg" width="120" height="120" alt="logo" /></h3>
                </div>
            </header>

            <div>
                <ul>

                    <%--<li><a href="#news">News</a></li>--%>
                    <li><a href="#contact">Contact</a></li>
                    <%--<li><a href="AadharLogout.aspx">Logout</a></li>--%>
                    <li><a href="#about">About</a></li>
                </ul>
            </div>
            <section>
                <nav>
                </nav>

                <article>
                   
                    <br />
                    <p>
                        <h3 style="color: #0f3f6a; position: relative; top: 10px; left: 100px;">Aadhar</h3>
                    </p>
                    <br />

        
                    <div class="content">
                        <p>
                            <h2 style="color: #0f3f6a;">Login!</h2>
                        </p>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label><br />
                        <asp:TextBox ID="Username" runat="server" placeholder="username" Style="border-color: #0f3f6a; height: 30px; width: 250px; text-align=center;"></asp:TextBox><br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
                        <asp:TextBox ID="Password" runat="server" placeholder="password" type="password" Style="border-color: #0f3f6a; height: 30px; width: 250px; text-align=center;"></asp:TextBox><br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button3" runat="server" Text="Sign In" OnClick="Login_Click" Style="background-color: #0f3f6a; color: white; height: 30px; width: 100px;" />

                    </div>

                    <div class="vl">
                    </div>



                </article>

            </section>
            <p>
                <h3 style="position: relative; left: 65%; top: -370px; color: #0f3f6a;">Unique Identification Authority of India</h3>
            </p>

            <p style="position: relative; left: 65%; top: -340px; bottom: 5000px; color: #0f3f6a; font-family: Arial">The Unique Identification Authority of India (UIDAI) is a statutory authority established  </p>
            <p style="position: relative; left: 65%; top: -339.9px; bottom: 5000px; color: #0f3f6a; font-family: Arial">under the provisions of the Aadhaar.Prior to its establishment as a statutory authority,</p>
            <p style="position: relative; left: 65%; top: -339.8px; bottom: 5000px; color: #0f3f6a; font-family: Arial">UIDAI was functioning as an attached office of the then Planning Commission (now NITI Aayog) </p>
            <p style="position: relative; left: 65%; top: -339.7px; bottom: 5000px; color: #0f3f6a; font-family: Arial">vide its Gazette Notification No.-A-43011/02/2009-Admn.I) dated 28th January, 2009. The first </p>
            <p style="position: relative; left: 65%; top: -339.6px; bottom: 5000px; color: #0f3f6a; font-family: Arial">UID number was issued on 29 September 2010 to a resident of Nandurbar, Maharashtra.The Authority </p>
            <p style="position: relative; left: 65%; top: -339.5px; bottom: 5000px; color: #0f3f6a; font-family: Arial">has so far issued more than 120 crore Aadhaar numbers to the residents of India. Under the Aadhaar</p>
            <p style="position: relative; left: 65%; top: -339.4px; bottom: 5000px; color: #0f3f6a; font-family: Arial">Act 2016, UIDAI is responsible for Aadhaar enrolment and authentication, including operation and </p>
            <p style="position: relative; left: 65%; top: -339.3px; bottom: 5000px; color: #0f3f6a; font-family: Arial">management of all stages of Aadhaar life cycle.</p>

            <footer>
                <img src="../img/UIDAI.jpg" width="120" height="120" alt="logo" />

            </footer>

        </div>
    </form>
</body>
</html>

