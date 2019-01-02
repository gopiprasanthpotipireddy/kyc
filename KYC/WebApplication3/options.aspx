<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="options.aspx.cs" Inherits="WebApplication3.WebForm2" %>

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
                    color: black;
                }

        .main {
            margin-left: 200px; /* Same as the width of the sidenav */
        }

        @media screen and (max-height: 450px) {
            .sidenav {
                padding-top: 15px;
            }

                .sidenav a {
                    font-size: 18px;
                }
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

    <script>
        $(document).ready(function () {
            // Add minus icon for collapse element which is open by default
            $(".collapse.in").each(function () {
                $(this).siblings(".panel-heading").find(".glyphicon").addClass("glyphicon-minus").removeClass("glyphicon-plus");
            });

            // Toggle plus minus icon on show hide of collapse element
            $(".collapse").on('show.bs.collapse', function () {
                $(this).parent().find(".glyphicon").removeClass("glyphicon-plus").addClass("glyphicon-minus");
            }).on('hide.bs.collapse', function () {
                $(this).parent().find(".glyphicon").removeClass("glyphicon-minus").addClass("glyphicon-plus");
            });
        });
    </script>
   
</head>
    <form runat ="server">
<body>
    <div class="sidenav">
        <a href="#">Menu</a>
        <a href="#">New Case</a>
        <a href="#">Draft</a>
        <a href="Submits.html">Submits</a>
        <a href="Login.aspx">LogOut</a>
    </div>
    <div class="main">
        <div class="tab">
            <h1> Welcome Maker</h1>
            <asp:button class="tablinks" id="tab4" onclick="openCity(event, 'content1')"  style="color: black;">ClientStaticData</asp:button>
            <asp:button class="tablinks" id="tab5" onclick="openCity(event, 'content2')"  style="color: black;">AssociatedPersonsAndEntities</asp:button>
            <asp:button class="tablinks" id="tab6" onclick="openCity(event, 'content3')"  style="color: black;">CheckList</asp:button>
            <%--<asp:Button ID="Button2" runat="server" Text="Button" Height="50px" OnClick="Button2_Click" Width="124px" />--%>
            <input id="Button1" runat="server" type="button" onserverclick="submit_OnClick" style="background-color:white;height:50px; width:120px;" value="submit" />
              <input id="Button2" runat="server" type="button" onserverclick="View_OnClick" style="background-color:white;height:50px; width:120px;" value="View_submit" />
        </div>
        <div id="content1" class="tabcontent">


            <div class="bs-example">
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-plus"></span>EntityRelationship/Offerings</a>
                            </h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse">
                            <div class="panel-body">

                                <table class="table">
                                    <tr>
                                        <td>

                                            <label style="color: black;">Client Name</label>

                                        </td>
                                        <td>
                                            <input type="text" id="txtbox1" runat="server" />

                                           <%-- <div class="dropdown">
                                                <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">HTML</a></li>
                                                    <li><a href="#">CSS</a></li>
                                                    <li><a href="#">JavaScript</a></li>
                                                </ul>
                                            </div>--%>
                                          <%-- <asp:TextBox ID="TextBox15" runat="server"  style="background-color:white;"></asp:TextBox>--%>
                                          
                                        </td>
                                        <td>
                                            <label style="color: black;">Client CI ID</label>

                                        </td>
                                        <td>
                                           <%-- <asp:TextBox ID="TextBox16" runat="server"  style="background-color:white;"></asp:TextBox>--%>
                                            <input id="Text2" type="text"  runat ="server" />
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Written internal places and procedures</label>

                                        </td>
                                        <td>

                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd1" name="optradio"  runat="server" value="Yes" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd2" name="optradio" runat="server" value="No" />No</label>
                                                <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                                <asp:ListItem>Yes</asp:ListItem>
                                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">A Risk Assessment</label>

                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd3" name="optradio1"  runat="server" value="Yes"/>Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd4" name="optradio1"  runat="server" value="No" />No</label>
                                                 <%--<asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Designation of compliance officer</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd5" name="optradio2" runat="server" value="Yes"/>Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd6" name="optradio2" runat="server" value="No"/>No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>


                                            <label style="color: black;">Periodic independency testing of AML Program</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd7" name="optradio3" runat="server" value="Yes"/>Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd8" name="optradio3" runat="server" value="No" />No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">Periodic training of employees</label>


                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd9" name="optradio4" value="Yes">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd10" name="optradio4" value="No">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td> </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-plus"></span>Product/Services and Booking Locations</a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">

                                <table class="table">
                                    <tr>
                                        <td>

                                            <label style="color: black;">Client Name</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox3" />

                                           <%-- <div class="dropdown">
                                                <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">HTML</a></li>
                                                    <li><a href="#">CSS</a></li>
                                                    <li><a href="#">JavaScript</a></li>
                                                </ul>
                                            </div>--%>
                                        </td>
                                        <td>
                                            <label style="color: black;">Client CI ID</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox4"/> 
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Written internal places and procedures</label>

                                        </td>
                                        <td>

                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd11" name="optradio5" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd12" name="optradio5" />No</label>
                                               <%-- <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                                <asp:ListItem>Yes</asp:ListItem>
                                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">A Risk Assessment</label>

                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd13" name="optradio6" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd14" name="optradio6" />No</label>
                                                 <%--<asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Designation of compliance officer</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd15" name="optradio7"/>Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd16" name="optradio7"/>No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>


                                            <label style="color: black;">Periodic independency testing of AML Program</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd17" name="optradio8"/>Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd18" name="optradio8"/>No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">Periodic training of employees</label>


                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd19" name="optradio9"/>Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd20" name="optradio9"/>No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-plus"></span>Countries with transaction activities</a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body">

                                <table class="table">
                                    <tr>
                                        <td>

                                            <label style="color: black;">Client Name</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox5" />

                                            <%--<div class="dropdown">
                                                <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">HTML</a></li>
                                                    <li><a href="#">CSS</a></li>
                                                    <li><a href="#">JavaScript</a></li>
                                                </ul>
                                            </div>--%>
                                        </td>
                                        <td>
                                            <label style="color: black;">Client CI ID</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox6"> </input>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Written internal places and procedures</label>

                                        </td>
                                        <td>

                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd21" name="optradio10" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd22" name="optradio10" />No</label>
                                                <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                                <asp:ListItem>Yes</asp:ListItem>
                                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">A Risk Assessment</label>

                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd23" name="optradio11" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd24" name="optradio11" />No</label>
                                 <%--               <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioBut<%--tonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Designation of compliance officer</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd25" name="optradio12">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd26" name="optradio12">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>


                                            <label style="color: black;">Periodic independency testing of AML Program</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd27" name="optradio13">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd28" name="optradio13">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;" style="color: black;">Periodic training of employees</label>


                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd29" name="optradio14">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd30" name="optradio14">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-plus"></span>RMA/SWIFT Details</a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse">
                            <div class="panel-body">

                                <table class="table">
                                    <tr>
                                        <td>

                                            <label style="color: black;">Client Name</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox7" />

                                           <%-- <div class="dropdown">--%>
                                                <%--<button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">HTML</a></li>
                                                    <li><a href="#">CSS</a></li>
                                                    <li><a href="#">JavaScript</a></li>
                                                </ul>
                                            </div>--%>
                                        </td>
                                        <td>
                                            <label style="color: black;">Client CI ID</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox8"> </input>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Written internal places and procedures</label>

                                        </td>
                                        <td>

                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd31" name="optradio15" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd32" name="optradio15" />No</label>
                                               <%-- <asp:RadioButtonList ID="RadioButtonList1" runat="server">--%>
                                                <%--<asp:ListItem>Yes</asp:ListItem>--%>
                                                <%-- <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">A Risk Assessment</label>

                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd33" name="optradio16" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd34" name="optradio16" />No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Designation of compliance officer</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd35 " name="optradio17">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd36" name="optradio17">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>


                                            <label style="color: black;">Periodic independency testing of AML Program</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd37" name="optradio18">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd38" name="optradio18">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">Periodic training of employees</label>


                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd39" name="optradio19">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd40" name="optradio19">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive"><span class="glyphicon glyphicon-plus"></span>Entity Address</a>
                            </h4>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse">
                            <div class="panel-body">

                                <table class="table">
                                    <tr>
                                        <td>

                                            <label style="color: black;">Client Name</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox9" />

                                            <%--<div class="dropdown">
                                                <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">HTML</a></li>
                                                    <li><a href="#">CSS</a></li>
                                                    <li><a href="#">JavaScript</a></li>
                                                </ul>
                                            </div>--%>
                                        </td>
                                        <td>
                                            <label style="color: black;">Client CI ID</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox10"> </input>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Written internal places and procedures</label>

                                        </td>
                                        <td>

                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd41" name="optradio20" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd42" name="optradio20" />No</label>
                                                <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server">--%>
                                                <%--<asp:ListItem>Yes</asp:ListItem>--%>
                                                <%-- <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">A Risk Assessment</label>

                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd43" name="optradio21" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd44" name="optradio22" />No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Designation of compliance officer</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd45" name="optradio23">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd46" name="optradio24">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>


                                            <label style="color: black;">Periodic independency testing of AML Program</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd47" name="optradio25">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd48" name="optradio25">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">Periodic training of employees</label>


                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd49" name="optradio26">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd50" name="optradio26">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix"><span class="glyphicon glyphicon-plus"></span>Entity AML Check______</a>
                            </h4>
                        </div>
                        <div id="collapseSix" class="panel-collapse collapse">
                            <div class="panel-body">

                                <table class="table">
                                    <tr>
                                        <td>

                                            <label style="color: black;">Client Name</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox11" />

                                            <%--<div class="dropdown">
                                                <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">HTML</a></li>
                                                    <li><a href="#">CSS</a></li>
                                                    <li><a href="#">JavaScript</a></li>
                                                </ul>
                                            </div>--%>
                                        </td>
                                        <td>
                                            <label style="color: black;">Client CI ID</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox12"> </input>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Written internal places and procedures</label>

                                        </td>
                                        <td>

                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd51" name="optradio27" />Yes</label>

                                                <label>
                                                    <input type="radio" id="rd52" name="optradio27" />No</label>
                                                <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server">--%>
                                                <%--<asp:ListItem>Yes</asp:ListItem>--%>
                                                <%-- <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">A Risk Assessment</label>

                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd53" name="optradio28" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd54" name="optradio28" />No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Designation of compliance officer</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd55" name="optradio29">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd56" name="optradio29">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>


                                            <label style="color: black;">Periodic independency testing of AML Program</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd57" name="optradio30">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd58" name="optradio30">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">Periodic training of employees</label>


                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd59" name="optradio31">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd60" name="optradio32">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioBut<%--tonList>--%>
                                            </div>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven"><span class="glyphicon glyphicon-plus"></span>Pre Check Results from World Check</a>
                            </h4>
                        </div>
                        <div id="collapseSeven" class="panel-collapse collapse">
                            <div class="panel-body">

                                <table class="table">
                                    <tr>
                                        <td>

                                            <label style="color: black;">Client Name</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox13" />

                                            <%--<div class="dropdown">
                                                <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">HTML</a></li>
                                                    <li><a href="#">CSS</a></li>
                                                    <li><a href="#">JavaScript</a></li>
                                                </ul>
                                            </div>--%>
                                        </td>
                                        <td>
                                            <label style="color: black;">Client CI ID</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox14"> </input>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Written internal places and procedures</label>

                                        </td>
                                        <td>

                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd61" name="optradio33" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd62" name="optradio33" />No</label>
                                                <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server">--%>
                                                <%--<asp:ListItem>Yes</asp:ListItem>--%>
                                                <%-- <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">A Risk Assessment</label>

                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd63" name="optradio34" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd64" name="optradio34" />No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Designation of compliance officer</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>


                                            <label style="color: black;">Periodic independency testing of AML Program</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">Periodic training of employees</label>


                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseEight"><span class="glyphicon glyphicon-plus"></span>Pre Check Results from BMO Internal List</a>
                            </h4>
                        </div>
                        <div id="collapseEight" class="panel-collapse collapse">
                            <div class="panel-body">

                                <table class="table">
                                    <tr>
                                        <td>

                                            <label style="color: black;">Client Name</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox1" />

                                            <%--<div class="dropdown">
                                                <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">HTML</a></li>
                                                    <li><a href="#">CSS</a></li>
                                                    <li><a href="#">JavaScript</a></li>
                                                </ul>
                                            </div>--%>
                                        </td>
                                        <td>
                                            <label style="color: black;">Client CI ID</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox2"> </input>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Written internal places and procedures</label>

                                        </td>
                                        <td>

                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd1" name="optradio" />Yes</label>

                                                <label>
                                                   <%-- <input type="radio" id="rd2" name="optradio" />No</label>--%>
                                                <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server">--%>
                                                <%--<asp:ListItem>Yes</asp:ListItem>--%>
                                                <%-- <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">A Risk Assessment</label>

                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd3" name="optradio" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd4" name="optradio" />No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Designation of compliance officer</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>


                                            <label style="color: black;">Periodic independency testing of AML Program</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">Periodic training of employees</label>


                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseNine"><span class="glyphicon glyphicon-plus"></span>Generate/Update UEN</a>
                            </h4>
                        </div>
                        <div id="collapseNine" class="panel-collapse collapse">
                            <div class="panel-body">

                                <table class="table">
                                    <tr>
                                        <td>

                                            <label style="color: black;">Client Name</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox1" />

                                            <%--<div class="dropdown">
                                                <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">HTML</a></li>
                                                    <li><a href="#">CSS</a></li>
                                                    <li><a href="#">JavaScript</a></li>
                                                </ul>
                                            </div>--%>
                                        </td>
                                        <td>
                                            <label style="color: black;">Client CI ID</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox2"> </input>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Written internal places and procedures</label>

                                        </td>
                                        <td>

                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd1" name="optradio" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd2" name="optradio" />No</label>
                                                <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server">--%>
                                                <%--<asp:ListItem>Yes</asp:ListItem>--%>
                                                <%-- <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">A Risk Assessment</label>

                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd3" name="optradio" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd4" name="optradio" />No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Designation of compliance officer</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>


                                            <label style="color: black;">Periodic independency testing of AML Program</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">Periodic training of employees</label>


                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTen"><span class="glyphicon glyphicon-plus"></span>Customer Due Diligence/ other Details</a>
                            </h4>
                        </div>
                        <div id="collapseTen" class="panel-collapse collapse">
                            <div class="panel-body">

                                <table class="table">
                                    <tr>
                                        <td>

                                            <label style="color: black;">Client Name</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox1" />

                                            <%--<div class="dropdown">
                                                <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">HTML</a></li>
                                                    <li><a href="#">CSS</a></li>
                                                    <li><a href="#">JavaScript</a></li>
                                                </ul>
                                            </div>--%>
                                        </td>
                                        <td>
                                            <label style="color: black;">Client CI ID</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox2"> </input>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Written internal places and procedures</label>

                                        </td>
                                        <td>

                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd1" name="optradio" />Yes</label>

                                                <label>
                                                    <input type="radio" id="rd2" name="optradio" />No</label>
                                                <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server">--%>
                                                <%--<asp:ListItem>Yes</asp:ListItem>--%>
                                                <%-- <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">A Risk Assessment</label>

                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd3" name="optradio" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd4" name="optradio" />No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Designation of compliance officer</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label>
                                                    <input type="radio" name="optradio">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>


                                            <label style="color: black;">Periodic independency testing of AML Program</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">Periodic training of employees</label>


                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseEleven"><span class="glyphicon glyphicon-plus"></span>Primary Contact Details</a>
                            </h4>
                        </div>
                        <div id="collapseEleven" class="panel-collapse collapse">
                            <div class="panel-body">

                                <table class="table">
                                    <tr>
                                        <td>

                                            <label style="color: black;">Client Name</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox1" />

                                            <%--<div class="dropdown">
                                                <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">HTML</a></li>
                                                    <li><a href="#">CSS</a></li>
                                                    <li><a href="#">JavaScript</a></li>
                                                </ul>
                                            </div>--%>
                                        </td>
                                        <td>
                                            <label style="color: black;">Client CI ID</label>

                                        </td>
                                        <td>
                                            <input type="text" id="textbox2"> </input>
                                        </td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label style="color: black;">Written internal places and procedures</label>

                                        </td>
                                        <td>

                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd1" name="optradio" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd2" name="optradio" />No</label>
                                                <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server">--%>
                                                <%--<asp:ListItem>Yes</asp:ListItem>--%>
                                                <%-- <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label>A Risk Assessment</label>

                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" id="rd3" name="optradio" />Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" id="rd4" name="optradio" />No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <label>Designation of compliance officer</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>


                                            <label>Periodic independency testing of AML Program</label>
                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" name="optradio" runat="server" id="rdTest">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td>
                                            <label style="color: black;">Periodic training of employees</label>


                                        </td>
                                        <td>
                                            <div class="radio">
                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">Yes</label>

                                                <label style="color: black;">
                                                    <input type="radio" name="optradio">No</label>
                                                <%-- <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                            </div>
                                        </td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                  
                                </table> 
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
   
    <div id="content2" class="tabcontent">
    </div>

    <div id="content3" class="tabcontent">
       
    </div>
    
</body>
        </form>
<script>
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
</script>
</html>
