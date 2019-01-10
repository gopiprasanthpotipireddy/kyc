<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="options.aspx.cs" Inherits="KYC.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/animate.css" />
    <link rel="stylesheet" href="css/main.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style type="text/css">
        .bs-example {
            margin: 20px;
        }

        .panel-title .glyphicon {
            font-size: 14px;
        }

        .button {
            align-content: center;
        }

        body {
            font-family: Arial;
        }

        /* Style the tab */
        .tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
        }

            /* Style the buttons inside the tab */
            .tab button {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                transition: 0.3s;
                font-size: 17px;
            }

                /* Change background color of buttons on hover */
                .tab button:hover {
                    background-color: #ddd;
                }

                /* Create an active/current tablink class */
                .tab button.active {
                    background-color: orange;
                }

        /* Style the tab content */
        .tabcontent {
            display: none;
            padding: 6px 12px;
            -webkit-animation: fadeEffect 1s;
            animation: fadeEffect 1s;
        }

        /* Fade in tabs */
        @-webkit-keyframes fadeEffect {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        @keyframes fadeEffect {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .sidenav {
            height: 100%;
            width: 200px;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            /*background-color:#2F4F4F;*/
            background: -moz-linear-gradient(-45deg, rgba(0,0,0,0.8) 0%, rgba(0,0,0,0.8) 100%);
            background: -webkit-linear-gradient(-45deg, rgba(0,0,0,0.8) 0%,rgba(0,0,0,0.8) 100%);
            background: linear-gradient(135deg, rgba(0,0,0,0.8) 0%,rgba(0,0,0,0.8) 100%);
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#cc000000', endColorstr='#cc000000',GradientType=1 );
            overflow-x: hidden;
            padding-top: 20px;
        }

            .sidenav a {
                padding: 6px 6px 40px 32px;
                text-decoration: none;
                font-size: 20px;
                color: white;
                display: block;
            }

                .sidenav a:hover {
                    color: hotpink;
                }

        .main {
            margin-left: 100px; /* Same as the width of the sidenav */
        }

        @media screen and (max-height: 450px) {
            .sidenav {
                padding-top: 15px;
            }

                .sidenav a {
                    font-size: 18px;
                }
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
    <style>
        body {
            background-image: url(../../img/image.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>


</head>
<body>
    <form runat="server">



        <div class="sidenav">
            <a href="#">Menu</a>
            <a href= "NewCase.aspx" target="iframe">New Case</a>
            <a href="#">Draft</a>

            <a href="View_Submits.aspx" target="iframe">View_Cases</a>
            <a href="Login.aspx">LogOut</a>
        </div>
        <div class="main">
            
            <iframe height="1150" width="1900" name="iframe"></iframe>
        </div>
    </form>
</body>
</html>

