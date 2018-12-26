<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="options.aspx.cs" Inherits="WebApplication3.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title />Example of Bootstrap 3 Accordion with Plus/Minus Icon</title>
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
<body>
    <div class="tab">
        <button class="tablinks" onclick="openCity(event, 'London')">ClientStaticData</button>
        <button class="tablinks" onclick="openCity(event, 'Paris')">AssociatedPersonsAndEntities</button>
        <button class="tablinks" onclick="openCity(event, 'Tokyo')">CheckList</button>
    </div>
    <div id="London" class="tabcontent">


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

                                        <label style="color:black;">Client Name</label>

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
                                        <label style="color:black;">Client CI ID</label>

                                    </td>
                                    <td>
                                        <input type="text" id="textbox2"> </input>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label style="color:black;">Written internal places and procedures</label>

                                    </td>
                                    <td>

                                        <div class="radio">
                                            <label style="color:black;">
                                                <input type="radio" id="rd1" name="optradio" />Yes</label>

                                            <label style="color:black;">
                                                <input type="radio" id="rd2" name="optradio" />No</label>
                                            <%--<asp:RadioButtonList ID="RadioButtonList1" runat="server">--%>
                                            <%--<asp:ListItem>Yes</asp:ListItem>--%>
                                            <%-- <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                        </div>
                                    </td>
                                    <td>
                                        <label style="color:black;">A Risk Assessment</label>

                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label style="color:black;">
                                                <input type="radio" id="rd3" name="optradio1" />Yes</label>

                                            <label style="color:black;">
                                                <input type="radio" id="rd4" name="optradio1" />No</label>
                                            <%-- <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <label style="color:black;">Designation of compliance officer</label>
                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label style="color:black;">
                                                <input type="radio" id ="rd5" name="optradio2">Yes</label>

                                            <label style="color:black;">
                                                <input type="radio" id ="rd6" name="optradio2">No</label>
                                            <%-- <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>


                                        <label style="color:black;">Periodic independency testing of AML Program</label>
                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label style="color:black;">
                                                <input type="radio" id="rd7" name="optradio3">Yes</label>

                                            <label style="color:black;">
                                                <input type="radio" id="rd8"  name ="optradio3">No</label>
                                            <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                        </div>
                                    </td>
                                    <td>
                                        <label style="color:black;">Periodic training of employees</label>


                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label style="color:black;">
                                                <input type="radio" id="rd9" name="optradio4">Yes</label>

                                            <label style="color:black;">
                                                <input type="radio" id="rd10" name="optradio4">No</label>
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

                                        <label>Client Name</label>

                                    </td>
                                    <td>
                                        <input type="text" id="textbox3" />

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
                                        <label>Client CI ID</label>

                                    </td>
                                    <td>
                                        <input type="text" id="textbox4"> </input>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Written internal places and procedures</label>

                                    </td>
                                    <td>

                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="rd11" name="optradio5" />Yes</label>

                                            <label>
                                                <input type="radio" id="rd12" name="optradio5" />No</label>
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
                                            <label>
                                                <input type="radio" id="rd13" name="optradio6" />Yes</label>

                                            <label>
                                                <input type="radio" id="rd14" name="optradio6" />No</label>
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
                                            <label>
                                                <input type="radio" id="rd15" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd16" name="optradio">No</label>
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
                                            <label>
                                                <input type="radio" id="rd17" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd18" name="optradio">No</label>
                                            <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                        </div>
                                    </td>
                                    <td>
                                        <label>Periodic training of employees</label>


                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="rd19" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd20" name="optradio">No</label>
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

                                        <label>Client Name</label>

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
                                        <label>Client CI ID</label>

                                    </td>
                                    <td>
                                        <input type="text" id="textbox6"> </input>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Written internal places and procedures</label>

                                    </td>
                                    <td>

                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="rd21" name="optradio" />Yes</label>

                                            <label>
                                                <input type="radio" id="rd22" name="optradio" />No</label>
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
                                            <label>
                                                <input type="radio" id="rd23" name="optradio" />Yes</label>

                                            <label>
                                                <input type="radio" id="rd24" name="optradio" />No</label>
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
                                            <label>
                                                <input type="radio" id="rd25" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd26" name="optradio">No</label>
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
                                            <label>
                                                <input type="radio" id="rd27" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd28" name="optradio">No</label>
                                            <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                        </div>
                                    </td>
                                    <td>
                                        <label>Periodic training of employees</label>


                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="rd29" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd30" name="optradio">No</label>
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

                                        <label>Client Name</label>

                                    </td>
                                    <td>
                                        <input type="text" id="textbox7" />

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
                                        <label>Client CI ID</label>

                                    </td>
                                    <td>
                                        <input type="text" id="textbox8"> </input>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Written internal places and procedures</label>

                                    </td>
                                    <td>

                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="rd31" name="optradio" />Yes</label>

                                            <label>
                                                <input type="radio" id="rd32" name="optradio" />No</label>
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
                                            <label>
                                                <input type="radio" id="rd33" name="optradio" />Yes</label>

                                            <label>
                                                <input type="radio" id="rd34" name="optradio" />No</label>
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
                                            <label>
                                                <input type="radio" id="rd35 "name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd36" name="optradio">No</label>
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
                                            <label>
                                                <input type="radio" id="rd37" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd38" name="optradio">No</label>
                                            <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                        </div>
                                    </td>
                                    <td>
                                        <label>Periodic training of employees</label>


                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="rd39" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd40" name="optradio">No</label>
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

                                        <label>Client Name</label>

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
                                        <label>Client CI ID</label>

                                    </td>
                                    <td>
                                        <input type="text" id="textbox10"> </input>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Written internal places and procedures</label>

                                    </td>
                                    <td>

                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="rd41" name="optradio" />Yes</label>

                                            <label>
                                                <input type="radio" id="rd42" name="optradio" />No</label>
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
                                            <label>
                                                <input type="radio" id="rd43" name="optradio" />Yes</label>

                                            <label>
                                                <input type="radio" id="rd44" name="optradio" />No</label>
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
                                            <label>
                                                <input type="radio" id="rd45" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd46" name="optradio">No</label>
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
                                            <label>
                                                <input type="radio" id="rd47" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd48" name="optradio">No</label>
                                            <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                        </div>
                                    </td>
                                    <td>
                                        <label>Periodic training of employees</label>


                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="rd49" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd50" name="optradio">No</label>
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

                                        <label>Client Name</label>

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
                                        <label>Client CI ID</label>

                                    </td>
                                    <td>
                                        <input type="text" id="textbox12"> </input>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Written internal places and procedures</label>

                                    </td>
                                    <td>

                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="rd51" name="optradio" />Yes</label>

                                            <label>
                                                <input type="radio" id="rd52" name="optradio" />No</label>
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
                                            <label>
                                                <input type="radio" id="rd53" name="optradio" />Yes</label>

                                            <label>
                                                <input type="radio" id="rd54" name="optradio" />No</label>
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
                                            <label>
                                                <input type="radio" id="rd55" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd56" name="optradio">No</label>
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
                                            <label>
                                                <input type="radio" id="rd57" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd58" name="optradio">No</label>
                                            <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                        </div>
                                    </td>
                                    <td>
                                        <label>Periodic training of employees</label>


                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="rd59" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" id="rd60" name="optradio">No</label>
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
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven"><span class="glyphicon glyphicon-plus"></span>Pre Check Results from World Check</a>
                        </h4>
                    </div>
                    <div id="collapseSeven" class="panel-collapse collapse">
                        <div class="panel-body">

                            <table class="table">
                                <tr>
                                    <td>

                                        <label>Client Name</label>

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
                                        <label>Client CI ID</label>

                                    </td>
                                    <td>
                                        <input type="text" id="textbox14"> </input>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Written internal places and procedures</label>

                                    </td>
                                    <td>

                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="rd61" name="optradio" />Yes</label>

                                            <label>
                                                <input type="radio" id="rd62" name="optradio" />No</label>
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
                                            <label>
                                                <input type="radio" id="rd63" name="optradio" />Yes</label>

                                            <label>
                                                <input type="radio" id="rd64" name="optradio" />No</label>
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
                                            <label>
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


                                        <label>Periodic independency testing of AML Program</label>
                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" name="optradio">No</label>
                                            <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                        </div>
                                    </td>
                                    <td>
                                        <label>Periodic training of employees</label>


                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optradio">Yes</label>

                                            <label>
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

                                        <label>Client Name</label>

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
                                        <label>Client CI ID</label>

                                    </td>
                                    <td>
                                        <input type="text" id="textbox2"> </input>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Written internal places and procedures</label>

                                    </td>
                                    <td>

                                        <div class="radio">
                                            <label>
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
                                        <label>A Risk Assessment</label>

                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="rd3" name="optradio" />Yes</label>

                                            <label>
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
                                            <label>
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


                                        <label>Periodic independency testing of AML Program</label>
                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" name="optradio">No</label>
                                            <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                        </div>
                                    </td>
                                    <td>
                                        <label>Periodic training of employees</label>


                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optradio">Yes</label>

                                            <label>
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

                                        <label>Client Name</label>

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
                                        <label>Client CI ID</label>

                                    </td>
                                    <td>
                                        <input type="text" id="textbox2"> </input>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Written internal places and procedures</label>

                                    </td>
                                    <td>

                                        <div class="radio">
                                            <label>
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
                                        <label>A Risk Assessment</label>

                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="rd3" name="optradio" />Yes</label>

                                            <label>
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
                                            <label>
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


                                        <label>Periodic independency testing of AML Program</label>
                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" name="optradio">No</label>
                                            <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                        </div>
                                    </td>
                                    <td>
                                        <label>Periodic training of employees</label>


                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optradio">Yes</label>

                                            <label>
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

                                        <label>Client Name</label>

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
                                        <label>Client CI ID</label>

                                    </td>
                                    <td>
                                        <input type="text" id="textbox2"> </input>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Written internal places and procedures</label>

                                    </td>
                                    <td>

                                        <div class="radio">
                                            <label>
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
                                        <label>A Risk Assessment</label>

                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" id="rd3" name="optradio" />Yes</label>

                                            <label>
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
                                            <label>
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


                                        <label>Periodic independency testing of AML Program</label>
                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" name="optradio">No</label>
                                            <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                        </div>
                                    </td>
                                    <td>
                                        <label>Periodic training of employees</label>


                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optradio">Yes</label>

                                            <label>
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

                                        <label>Client Name</label>

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
                                        <label>Client CI ID</label>

                                    </td>
                                    <td>
                                        <input type="text" id="textbox2"> </input>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>
                                        <label>Written internal places and procedures</label>

                                    </td>
                                    <td>

                                        <div class="radio">
                                            <label style="color:black;">
                                                <input type="radio" id="rd1" name="optradio" />Yes</label>

                                            <label style="color:black;">
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
                                            <label style="color:black;">
                                                <input type="radio" id="rd3" name="optradio" />Yes</label>

                                            <label style="color:black;">
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
                                            <label>
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


                                        <label>Periodic independency testing of AML Program</label>
                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optradio">Yes</label>

                                            <label>
                                                <input type="radio" name="optradio">No</label>
                                            <%-- <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                                 <asp:ListItem>Yes</asp:ListItem>
                                 <asp:ListItem>No</asp:ListItem>
                             </asp:RadioButtonList>--%>
                                        </div>
                                    </td>
                                    <td>
                                        <label>Periodic training of employees</label>


                                    </td>
                                    <td>
                                        <div class="radio">
                                            <label>
                                                <input type="radio" name="optradio">Yes</label>

                                            <label>
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
    <div id="Paris" class="tabcontent">
    </div>

    <div id="Tokyo" class="tabcontent">
        <p>hjgfgdhjgdch</p>
    </div>
    <form id="form1" runat="server">

        <div>
        </div>
    </form>
</body>
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
