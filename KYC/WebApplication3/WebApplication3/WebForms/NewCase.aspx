<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewCase.aspx.cs" Inherits="KYC.NewCase" %>

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


        .main {
            margin-left: 100px; /* Same as the width of the sidenav */
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
    <form runat="server">
        <div class="main">
            <div class="tab">
                <h1>Welcome Maker</h1>
                <asp:Button class="tablinks" ID="tab4" OnClick="openCity(event,'content1')" Style="color: black;">ClientStaticData</asp:Button>
                <asp:Button class="tablinks" ID="tab5" OnClick="openCity(event, 'content2')" Style="color: black;">AssociatedPersonsAndEntities</asp:Button>
                <asp:Button class="tablinks" ID="tab6" OnClick="openCity(event, 'content3')" Style="color: black;">CheckList</asp:Button>
                <input id="Button1" runat="server" type="button" onserverclick="submit_OnClick" style="background-color:orange; height: 50px; width: 120px; position:absolute; top:65px; right:300px;" value="submit" />
                <%--<asp:Button ID="Button2" runat="server" Text="Button" Height="50px" OnClick="Button2_Click" Width="124px" />--%>
                <%-- <input id="Button1" runat="server" type="button" onserverclick="submit_OnClick" style="background-color:white;height:50px; width:120px;" value="submit" />--%>
                <%--<input id="Button2" runat="server" type="button" onserverclick="View_OnClick" style="background-color:white;height:50px; width:120px;" value="View_submit" />--%>
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
                                                <input id="Text2" type="text" runat="server" required />
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
                                                        <input type="radio" id="rd1" name="optradio" runat="server" value="yes" required />Yes</label>

                                                    <label style="color: black;">
                                                        <input type="radio" id="rd2" name="optradio" runat="server" value="No" required />No</label>
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
                                                        <input type="radio" id="rd3" name="optradio1" runat="server" value="Yes" required />Yes</label>

                                                    <label style="color: black;">
                                                        <input type="radio" id="rd4" name="optradio1" runat="server" value="No" required />No</label>
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
                                                        <input type="radio" id="rd5" name="optradio2" runat="server" value="Yes" required />Yes</label>

                                                    <label style="color: black;">
                                                        <input type="radio" id="rd6" name="optradio2" runat="server" value="No" required />No</label>
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
                                                        <input type="radio" id="rd7" name="optradio3" runat="server" value="yes" required />Yes</label>

                                                    <label style="color: black;">
                                                        <input type="radio" id="rd8" name="optradio3" runat="server" value="No" required />No</label>
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
                                                        <input type="radio" id="rd9" name="optradio4" runat="server" value="Yes" />Yes</label>

                                                    <label style="color: black;">
                                                        <input type="radio" id="rd10" name="optradio4" runat="server" value="No" />No</label>
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
                                                <input type="text" id="textbox4" />
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
                                                        <input type="radio" id="rd15" name="optradio7" />Yes</label>

                                                    <label style="color: black;">
                                                        <input type="radio" id="rd16" name="optradio7" />No</label>
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
                                                        <input type="radio" id="rd17" name="optradio8" />Yes</label>

                                                    <label style="color: black;">
                                                        <input type="radio" id="rd18" name="optradio8" />No</label>
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
                                                        <input type="radio" id="rd19" name="optradio9" />Yes</label>

                                                    <label style="color: black;">
                                                        <input type="radio" id="rd20" name="optradio9" />No</label>
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
                                                        <input type="radio" id="rd1" name="optradio" value="Yes" />Yes</label>

                                                    <label style="color: black;">
                                                        <input type="radio" id="rd2" name="optradio" value="No" />No</label>
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
       

        <div id="content2" class="tabcontent">

            <div class="bs-example">
                <div class="panel-group" id="accordion1">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-plus"></span>Associated Persons and Entities (Owners, Key Senior Mgmt, Directors, Signatories)</a>
                            </h4>
                        </div>
                        <div id="collapseOne2" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>
                                    <table class="table">
                                        <tr><td><label id ="SearchinCMCIF" runat="server">SearchinCMCIF</label></td></tr>
                                        <tr><td><label id="BasicDetails" runat="server">BasicDetails</label></td></tr>
                                        <tr>
                                            <td>
                                               <label id="EntityName" runat="server">EntityName</label>
                                            </td>
                                            <td>
                                                <input id="Entity_Name" type="text" runat="server"/>
                                                </td>
                                            
                                             <td>
                                               <label id="Trade_Name" runat="server">TradeNameDoing BusinessAsACA(AlsoKnownAs)</label>
                                            </td>
                                                <td>
                                                    <textarea id="TradeName" runat="server"></textarea>

                                                    </td>
                                                </tr>
                                        <tr><td><label id="First_Name" runat="server">FirstName</label></td>
                                            <td>
                                                <input id="FirstName" type="text" runat="server" /></td>
                                            </tr>
                                        <tr>
                                            <td><label id="Middle_Name" runat="server">MiddleName</label></td>
                                            <td> <input id="MiddleName" type="text" runat="server"/></td
                                            <td><label id="Last_Name" runat="server">LastName</label></td>
                                            <td> <input id="LastName" type="text" runat="server" /></td>
                                        </tr>
                                         <tr>
                                            <td><label id="Family_Name" runat="server">FamilyName</label></td>
                                            <td> <input id="FamilyName" type="text" runat="server"/></td
                                            <td><label id="Title" runat="server">Title</label></td>
                                            <td> <input id="_Title" type="text" runat="server" /></td>
                                              <td><label id="Suffix" runat="server">Suffix</label></td>
                                            <td> <input id="_Suffix" type="text" runat="server"/></td>
                                        </tr>
                                        <tr><td><label id="CIFID" runat="server">CIFID</label></td>
                                            <td> <input id="CIF_ID" type="text" runat="server"/></td>
                                            <td><label id="UEN_Number" runat="server">CIFID</label></td>
                                            <td> <input id="UENNumber" type="text" runat="server"/></td>
                                        </tr>
                                        <tr>
                                             <td><label id="customerclassification" runat="server">CustomerClassification</label></td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li>High Risk</li>
                                                        <li>Low Risk</li>
                                                        <li>Medium Risk</li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <label id="Prohibited" runat="server">Prohibited</label>
                                            </td>
                                            <td>
                                                <input id="Prohibited_text" type="checkbox" />
                                            </td>
                                           
                                        </tr>
                                        <tr><td> <label id="Individuals" runat="server">ForIndividualsOnly</label></td></tr>
                                        <tr>
                                            <td><label id="Occupation" runat="server">Occupation</label> </td>
                                            <td> <input id="Occupation_text" type="text" /></td>
                                            </tr>
                                        <tr>
                                            <td><label id="OccupationDescription" runat="server">OccupationDescriptionJustification</label> </td>
                                            <td>
                                                <textarea id="Occupation_Description"></textarea>
                                                 </td>
                                        </tr>
                                        <tr>
                                            <td>
                                              <label id="DateOfBirth" runat="server">DateofBirth</label>  
                                            </td>
                                            
                                            <td>
                                                <a href="#">Update/View</a>
                                            </td>
                                            </tr>
                                            <tr>
                                                <td><label id="Occupation_Individual" runat="server">Occupation</label>  </td>
                                                <td><div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li></li>
                                                        <li></li>
                                                        <li></li>
                                                    </ul>
                                                </div></td>
                                            <td>
                                                 <label id="Nationality" runat="server">Nationality</label>  
                                            </td>
                                            <td>
                                               <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li>America</li>
                                                        <li>Australia</li>
                                                        <li>Canada</li>
                                                          <li>SriLanka</li>
                                                        <li>India</li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                               <label id="Citizenship" runat="server">Citizenship</label>   
                                            </td>
                                            <td> 
                                                 <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li></li>
                                                        <li></li>
                                                        <li></li>
                                                    </ul>
                                                </div> 
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <label id="TaxID" runat="server">TaxIdNumber</label> 
                                            </td>
                                            <td>
                                                <a href="#">Update/View</a>
                                            </td>
                                           </tr>
                                        <tr>
                                            <td>
                                              <label id="Entity" runat="server">IstherequestedaFinancialInstitution</label>
                                            </td>
                                            <td>
                                            <div class="radio">
                                                    <label>
                                                        <input type="radio" id="Entity_yes" name="optradio" value="yes"/>Yes</label>

                                                    <label>
                                                        <input type="radio" id="Entity_no" name="optradio" value="no"/>No</label>
                                                </div>
                                            </td>
                                                <td> <label id="Primary_Regulator" runat="server">Primary Regulator</label></td>
                                             <td> <input type="text" id="PrimaryRegulatorTextBox" runat="server"/></td>
                                             <td> <label id="regulator_Country" runat="server">Regulator Country</label></td>
                                             <td>  <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li>America</li>
                                                        <li>Australia</li>
                                                        <li>Canada</li>
                                                          <li>SriLanka</li>
                                                        <li>India</li>
                                                    </ul>
                                                </div> </td>
                                         </tr>
                                          <tr>
                                              <td> <label id="EntityExchange" runat="server">Is the Entity Publicly Listed on Exchange</label></td>
                                              <td> <div class="radio">
                                                    <label>
                                                        <input type="radio" runat="server" id="EntityExchange_yes" name="optradio" value="yes"/>Yes</label>

                                                    <label>
                                                        <input type="radio"  runat="server" id="EntityExchange_no" name="optradio" value="no"/>No</label>
                                                </div></td>
                                          </tr>
                                        <tr>
                                            <td><label id="EntityExchangeName" runat="server">Exchange Name</label></td>
                                            <td><textarea id="EntityExchangeNameTextArea"></textarea><a href="#">Select</a></td>
                                            <td><label id="Ticker" runat="server">Ticker Symbol</label></td>
                                            <td>
                                                <input id="TickerTextBox" type="text" /></td>
                                        </tr>
                                        <tr><td><label id="Comments" runat="server">Comments</label></td>
                                            <td><textarea id="CommentsTextArea"></textarea></td>
                                            <td><label id="LegalEntityType" runat="server">LegalEntityType</label></td>
                                            <td><div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li></li>
                                                        <li></li>
                                                        <li></li>
                                                    </ul>
                                                </div></td>
                                           <td><label id="NatureOfBusiness" runat="server">NatureOfBusiness</label></td>
                                            <td><textarea id="NatureOfBusinessTextArea"></textarea></td>
                                        </tr>
                                        <tr><td>
                                            <label id="CountryOfIncorporationandFormation" runat="server">CountryOfIncorporationandFormation</label>
                                            </td>
                                            <td><div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li>America</li>
                                                        <li>Australia</li>
                                                        <li>Canada</li>
                                                          <li>SriLanka</li>
                                                        <li>India</li>
                                                    </ul>
                                                </div></td>
                                            <td><label id="State" runat="server">StateProvinceOfIncorporationFormation</label></td>
                                            <td> <input type="text" id="StateProvinceOfIncorporationFormationText" runat="server"/></td>
                                             <td><label id="IncorporationRegistrationNumber" runat="server">IncorporationRegistrationNumber</label></td>
                                            <td> <input type="text" id="IncorporationRegistrationNumberText" runat="server"/></td>
                                        </tr>
                                        <tr><td><label id="WatchListManagement" runat="server">WatchListManagement</label></td>
                                             <td> <input type="text" id="WatchListManagementText" runat="server"/></td>
                                        </tr>
                                        <tr>
                                            <td><label id="PEFPPEP" runat="server">PEFP/FEP</label></td>
                                            <td>
                                                <input id="PEFPPEPCheckbox" type="checkbox" /></td>
                                            <td><label id="PEFPPEPJustification" runat="server">PEFP/FEP justification</label></td>
                                            <td>
                                                <textarea id="PEFPorPEPJustificationCheckbox"  ></textarea></td>
                                            <td><label id="PEFPorPEPDeterminationDate" runat="server">PEFP/PEPDeterminationDate</label></td>
                                             <td><input type="text" id="PEFPorPEPDeterminationDateText" runat="server"/></td>
                                            <td>
                                                <asp:Calendar ID="PEFPorPEPDeterminationDateCalendar" runat="server"></asp:Calendar>
                                            </td>
                                        </tr>
                                        <tr><td><label id="Sanction" runat="server">Sanction</label></td>
                                           <td> <input id="SanctionCheckbox" type="checkbox" /></td>
                                        </tr>
                                        <tr><td><label id="SanctionJustification" runat="server">SanctionJustification</label></td>
                                           <td> <textarea id="SanctionJustificationTextArea" ></textarea></td>
                                            <td><label id="SanctionDeterminationDatelabel" runat="server">SanctionDeterminationDate</label></td>
                                            <td> <input id="SanctionDeterminationDatelabelText" type="checkbox" /></td>
                                            <td>
                                                <asp:Calendar ID="SanctionDeterminationDate" runat="server"></asp:Calendar>
                                            </td>
                                        </tr>
                                        <tr><td><label id="PreCheckDate" runat="server">PreCheckDate</label></td>
                                            <td> <input id="PreCheckDateText" type="checkbox" /></td>
                                            <td><asp:Calendar ID="PreCheckDateCalendar" runat="server"></asp:Calendar></td>
                                        </tr>
                                        <tr><td><label id="AddressSection" runat="server">Address Section</label></td></tr>
                                        <tr><td><a href="#">Update/viewAddress</a></td></tr>
                                    </table>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-plus"></span>Ownership Details / Roles INformation</a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>
                                    <table class="table">
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li></li>
                                                        <li></li>
                                                        <li></li>
                                                    </ul>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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

                </div>

            </div>

        </div>
        <div id="content3" class="tabcontent">
            <div class="bs-example">
                <div class="panel-group" id="accordion3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-plus"></span>Jusrisdiction Information</a>
                            </h4>
                        </div>
                        <div id="collapseOne3" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-plus"></span>FATF(non-cooperative and high risk countries)- Information for reporting purposes only</a>
                            </h4>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-plus"></span>Adverse media</a>
                            </h4>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-plus"></span>Client Risk management</a>
                            </h4>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse">
                            <div class="panel-body">

                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive"><span class="glyphicon glyphicon-plus"></span>EDD STR/UAR Filing</a>
                            </h4>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse">
                            <div class="panel-body">




                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix"><span class="glyphicon glyphicon-plus"></span>Review Details</a>
                            </h4>
                        </div>
                        <div id="collapseSix" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven"><span class="glyphicon glyphicon-plus"></span>Site Visit/Discussion with senior management</a>
                            </h4>
                        </div>
                        <div id="collapseSeven" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseEight"><span class="glyphicon glyphicon-plus"></span>Formation/Registration and Regular Conformation</a>
                            </h4>
                        </div>
                        <div id="collapseEight" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseNine"><span class="glyphicon glyphicon-plus"></span>Formation/Registration and Regular Conformation-Documents</a>
                            </h4>
                        </div>
                        <div id="collapseNine" class="panel-collapse collapse">
                            <div class="panel-body">




                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTen"><span class="glyphicon glyphicon-plus"></span>AML policy/Questionnaire-Documents</a>
                            </h4>
                        </div>
                        <div id="collapseTen" class="panel-collapse collapse">
                            <div class="panel-body">




                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseEleven"><span class="glyphicon glyphicon-plus"></span>AML Policy Pillars</a>
                            </h4>
                        </div>
                        <div id="collapseEleven" class="panel-collapse collapse">
                            <div class="panel-body">




                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwelve"><span class="glyphicon glyphicon-plus"></span>AML additional requirements</a>
                            </h4>
                        </div>
                        <div id="collapseTwelve" class="panel-collapse collapse">
                            <div class="panel-body">




                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseThirteen"><span class="glyphicon glyphicon-plus"></span>Additional requirements for US Domiciled Bookings</a>
                            </h4>
                        </div>
                        <div id="collapseThirteen" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseFourteen"><span class="glyphicon glyphicon-plus"></span>Fund attestation</a>
                            </h4>
                        </div>
                        <div id="collapseFourteen" class="panel-collapse collapse">
                            <div class="panel-body">
                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseFifteen"><span class="glyphicon glyphicon-plus"></span>Document Link Capture</a>
                            </h4>
                        </div>
                        <div id="collapseFifteen" class="panel-collapse collapse">
                            <div class="panel-body">




                                <p>
                                    <table>
                                        <tr>
                                            <td>
                                                <button><a href="#">ClientName</a></button>
                                            </td>
                                            <td>
                                                <div class="dropdown">
                                                    <button class="btn dropdown-toggle" type="button" data-toggle="dropdown">
                                                        <span class="caret"></span>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">HTML</a></li>
                                                        <li><a href="#">CSS</a></li>
                                                        <li><a href="#">JavaScript</a></li>
                                                    </ul>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Client CI ID </a></button>
                                            </td>
                                            <td>
                                                <input type="textbox"></input>
                                            </td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Written internal Places, procedures and controls</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">A risk Assessment</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Designation Of Compliance Officer</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <button><a href="#">Periodic independency testing of AML Program</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
                                                </div>
                                            </td>
                                            <td>
                                                <button><a href="#">Periodic training of employees</a></button>
                                            </td>
                                            <td>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optradio">Yes</label>

                                                    <label>
                                                        <input type="radio" name="optradio">No</label>
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

                </div>
                </div>
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



