<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Master_Page/Site1.Master" AutoEventWireup="true" CodeBehind="ClientStaticData.aspx.cs" Inherits="WebApplication4.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <%--<header class="banner">
        <div class="gradient"></div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12 heading">
                   <%-- <h1 data-aos="fade-right" data-aos-delay="300">Hello and welcome to jumper</h1>
                    <h2 data-aos="fade-left" data-aos-delay="300">kickass wordpress agency theme</h2>--%>
                <%--</div>
            </div>
        </div>
    </header>--%>--%>
 <head>
   <meta charset="utf-8" />

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Example of Bootstrap 3 Accordion with Plus/Minus Icon</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
         <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700" rel="stylesheet"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/animate.css"/>
    <link rel="stylesheet" href="css/main.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


     <style type="text/css">
        .bs-example {
            margin: 10px;
        }

        .panel-title .glyphicon {
            font-size: 10px;
        }
        .button{
            align-content : center;

        }
    </style>
     <style>
         body {
             background-image: url(../../images/banner-2.jpg);
             /*background-image: url(images/meet.jpg);*/
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
    <p style="background:url(../images/banner-2.jpg);">
   
        <button class="button"><a href= "ClientStaticData.aspx">ClientStaticData</a></button>

                    <button class="button"><a href="AssociatedPersonsNEntities.aspx">AssociatePersonsData</a></button>

                    <button class="button"><a href="CheckList.aspx">CheckList</a></button>
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
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">A risk Assessment</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Designation Of Compliance Officer</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Periodic independency testing of AML Program</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">Periodic training of employees</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
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
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">A risk Assessment</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Designation Of Compliance Officer</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Periodic independency testing of AML Program</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">Periodic training of employees</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
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
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-plus"></span>Countries with transaction activities</a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
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
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">A risk Assessment</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Designation Of Compliance Officer</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Periodic independency testing of AML Program</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">Periodic training of employees</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
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
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-plus"></span>RMA/SWIFT Details</a>
                                    </h4>
                                </div>
                                <div id="collapseFour" class="panel-collapse collapse">
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
                                                        <input type="text"></input>
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
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">A risk Assessment</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Designation Of Compliance Officer</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Periodic independency testing of AML Program</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">Periodic training of employees</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
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
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseFive"><span class="glyphicon glyphicon-plus"></span>Entity Address</a>
                                    </h4>
                                </div>
                                <div id="collapseFive" class="panel-collapse collapse">
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
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">A risk Assessment</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Designation Of Compliance Officer</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Periodic independency testing of AML Program</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">Periodic training of employees</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
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
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseSix"><span class="glyphicon glyphicon-plus"></span>Entity AML Check______</a>
                                    </h4>
                                </div>
                                <div id="collapseSix" class="panel-collapse collapse">
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
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">A risk Assessment</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Designation Of Compliance Officer</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Periodic independency testing of AML Program</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">Periodic training of employees</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
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
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven"><span class="glyphicon glyphicon-plus"></span>Pre Check Results from World Check</a>
                                    </h4>
                                </div>
                                <div id="collapseSeven" class="panel-collapse collapse">
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
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">A risk Assessment</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Designation Of Compliance Officer</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Periodic independency testing of AML Program</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">Periodic training of employees</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
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
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseEight"><span class="glyphicon glyphicon-plus"></span>Pre Check Results from BMO Internal List</a>
                                    </h4>
                                </div>
                                <div id="collapseEight" class="panel-collapse collapse">
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
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">A risk Assessment</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Designation Of Compliance Officer</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Periodic independency testing of AML Program</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">Periodic training of employees</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
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
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseNine"><span class="glyphicon glyphicon-plus"></span>Generate/Update UEN</a>
                                    </h4>
                                </div>
                                <div id="collapseNine" class="panel-collapse collapse">
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
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">A risk Assessment</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Designation Of Compliance Officer</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Periodic independency testing of AML Program</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">Periodic training of employees</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
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
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTen"><span class="glyphicon glyphicon-plus"></span>Customer Due Diligence/ other Details</a>
                                    </h4>
                                </div>
                                <div id="collapseTen" class="panel-collapse collapse">
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
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">A risk Assessment</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Designation Of Compliance Officer</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Periodic independency testing of AML Program</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">Periodic training of employees</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio">Yes</label>

                                                            <label><input type="radio" name="optradio">No</label>
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
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseEleven"><span class="glyphicon glyphicon-plus"></span>Primary Contact Details</a>
                                    </h4>
                                </div>
                                <div id="collapseEleven" class="panel-collapse collapse">
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
                                                            <label><input type="radio" name="optradio1">Yes</label>

                                                            <label><input type="radio" name="optradio1">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">A risk Assessment</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio2">Yes</label>

                                                            <label><input type="radio" name="optradio2">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Designation Of Compliance Officer</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio3">Yes</label>

                                                            <label><input type="radio" name="optradio3">No</label>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <button><a href="#">Periodic independency testing of AML Program</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio4">Yes</label>

                                                            <label><input type="radio" name="optradio4">No</label>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <button><a href="#">Periodic training of employees</a></button>
                                                    </td>
                                                    <td>
                                                        <div class="radio">
                                                            <label><input type="radio" name="optradio5">Yes</label>

                                                            <label><input type="radio" name="optradio5">No</label>
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
        </p>
</asp:Content>
