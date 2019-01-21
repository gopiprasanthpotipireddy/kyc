<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aadhar.aspx.cs" Inherits="CustomerKYC.WebForms.Aadhar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .topnav a.active {
            background-color: #4CAF50;
            color: white;
        }

        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }

        .topnav a {
            float: left;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 17px;
        }

        .topnav {
            overflow: hidden;
            background-color: #0f3f6a;
            margin-left: 200px;
            margin-right: 100px;
        }

        .main {
            margin-left: 200px;
            margin-right: 100px; /* Same as the width of the sidenav */
        }

        iframe {
            margin-top: 0px;
            margin-bottom: 30px;
            -moz-border-radius: 1px;
            -webkit-border-radius: 1px;
            border-radius: 12px;
            -moz-box-shadow: 4px 4px 14px #000;
            -webkit-box-shadow: 4px 4px 14px #000;
            box-shadow: 4px 4px 14px #000;
        }
    </style>
</head>
<body>
    <form runat="server">

        <h1 style="text-align:center; color: black;"><img src = "../images/UIDAI.jpg" width="300" height="70"/><span style ="font-size:small;">Unique Identification Authority Of India </span> Aadhar Verification
            <img src="../images/Aadharsymbol.jpg" width="90" height="50" /></h1>
        <div class="topnav">
            <a href="#Home">Home</a>
            <a href="AadharVerification.aspx" target="iframe">AADHAR VERIFICATION</a>
            <a href="About.aspx" target="iframe">ABOUT ADHAAR</a>
            <a href="#news" target="iframe">AADHAR VERIFICATION</a>
            <a href="#contact">CONTACT</a>
            <a href="Home.aspx">ENROLL & GET AADHAAR</a>
            <a href="Logout.aspx">LOGOUT</a>
        </div>
        <div class="main">

            <iframe height="1000" width="1590" id="iframe" name="iframe"></iframe>
        </div>

    </form>
</body>
    </html>