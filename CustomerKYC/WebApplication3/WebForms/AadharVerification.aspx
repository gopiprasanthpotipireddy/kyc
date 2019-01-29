<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AadharVerification.aspx.cs" Inherits="WebApplication3.WebForms.AadharVerification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
            color: #791717;
            border-image-width: 10px;
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
            width: 70%;
            background-color: #f1f1f1;
            height: 300px; /* only for demonstration, should be removed */
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

        .button {
            background-color: #0f3f6a;
            /*background-image:-o-linear-gradient(top,#39ad13,#39ad13);
            background-image:linear-gradient(rgb(57, 173, 19), rgb(57, 173, 19));*/
            width: 200px;
            height: 50px;
        }
    </style>
</head>
<body>

    <form id="formAadharVerification" runat="server">
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

                    <li><a href="#">System pre-requisite for registration/post-login</a></li>

                    <li><a href="#">Procedure for Registration</a></li>

                    <li><a href="#">Procedure for change of DSC</a></li>

                    <li><a href="#">Procedure for Renewal of Aadhar Verification Facility</a></li>

                    <li><a href="#">Registration Status Track</a></li>


                    <li><a href="#">Authorisation</a></li>

                    <li><a href="#">Procedure for upload of file</a></li>

                    <li><a href="#">Procedure for Advance Addition</a></li>


                </ul>
            </nav>

            <article>
                <h2 style="color: #791717;">Aadhar</h2>
                <p>Aadhaar is an individual identification number issued by the Unique Identification Authority of India (UIDAI) on behalf of the Government of India to individuals for the purpose of establishing the unique identity of every single person.</p>
                <br />
                <p>The Aadhar number will serve as a proof of identity and address anywhere in India.</p>

                <p>Aadhaar is meant for individuals of any age (including children) for the purpose of establishing identities.</p>
                <p>Aadhaar is for individuals, therefore each member of the family needs to have a separate one.</p>
                <p>An individual will be provided with only one unique Aadhaar number and not multiple unique ID numbers.</p>
                <br />
                <h3 style="color: #0f3f6a; text-align: center;">Verify Aadhar Number:</h3>
                <p style="text-align: center;">Enter the Aadhar number here</p>
                <%--<div style="text-align:center;"><asp:TextBox id="TextBox3" runat="server"Placeholder="PAN number" type="text" name="userid" id="userid"></div>--%>

                <div align="center">
                    <input type="text" id="AadharNumber" runat="server" />
                    <asp:Button ID="VerifyButton" class="button" runat="server" Text="Verify" Style="color: white; font-size: large;" OnClick="verify" />
                </div>


            </article>

        </section>



        <footer>

            <img src="../img/Aadharsymbol.jpg" width="90" height="50" />
        </footer>
    </form>

</body>

</html>
