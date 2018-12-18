<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Master_Page/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits= "WebApplication4.WebForm1" %>

<asp:Content  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
               <header class="content">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <!-- Slide One - Set the background image for this slide in the line below -->
                            <div class="carousel-item active">
                                <img src= "../../images/banner-3.jpg" alt="..."/>
                                <div class="gradient"></div>
                                <div class="carousel-caption">
                                    <h3>OpsRamp-Markit</h3>
                                    <h1>Hello and welcome to OpsRamp</h1>
                                    <h2>Leading Source of Critical Information</h2>
                                    <h5>OpsRamp Markit is the leading source of information and insight in critical areas that shape today's business landscape. Customers around the world rely on us to address strategic and operational challenges.</h5>
                                    <a class="btn btn-primary" href="#" role="button">get started</a>
                                </div>
                            </div>
                            <!-- Slide Two - Set the background image for this slide in the line below -->
                            <div class="carousel-item">
                                <img src= "../../images/banner-2.jpg" alt="..."/>
                                <div class="gradient"></div>
                                <div class="carousel-caption">
                                    <h3>OpsRamp-Markit</h3>
                                    <h1>The New Intelligence. A wider picture, a deeper focus.</h1>
                                    <h2>Make Things Happen</h2>
                                    <h5>Every day, people in business, finance and government make decisions with wide-ranging implications. These leaders need to see the interconnected factors that impact their organizations. This knowledge allows them to make the best choices and achieve their business goals. We call this the New Intelligence.</h5>
                                    <a class="btn btn-primary" href="#" role="button">get started</a>
                                </div>
                            </div>
                            <!-- Slide Three - Set the background image for this slide in the line below -->
                          <%--  changed image--%>
                            <div class="carousel-item">
                                <img src= "../../images/meet.jpg"  alt="..."/>
                                <div class="gradient"></div>
                                <div class="carousel-caption">
                                    <h3>OpsRamp-Markit</h3>
                                    <h1>THE TEAM</h1>
                                    <h2>Connected Communities are here.</h2>
                                    <h5>The demand for a constantly connected experience is growing. See how RootMetrics testing shows performance across all areas of daily connected life.</h5>
                                    <a class="btn btn-primary" href="#" role="button">get started</a>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </header>
                <section class="about">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12 heading">
                                <div class="icon">
                                    <i class="fa fa-paper-plane" aria-hidden="true"></i>
                                </div>
                            </div>
                            <div class="col-sm-12 heading">
                                <h3>All you need to know about OpsRamp-Markit</h3>
                                <h4>Forward thinking. Future success.</h4>
                            </div>
                        </div>
                        <div class="row" data-aos="fade-up">
                            <div class="col-sm-4 col1">
                                <div class="row">
                                    <div class="col-sm-2 box1">
                                        <i class="fa fa-desktop" aria-hidden="true"></i>
                                    </div>
                                    <div class="col-sm-10 inner-content">
                                        <h3>THE TEAM</h3>
                                        <p>A crucial part of managing people is getting them to be as productive as possible, whilst working in teams.  </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 col2">
                                <div class="row">
                                    <div class="col-sm-2 box1">
                                        <i class="fa fa-cogs" aria-hidden="true"></i>
                                    </div>
                                    <div class="col-sm-10 inner-content">
                                        <h3>Corporate diversity</h3>
                                        <p>At OpsRamp Markit, diversity and inclusion are foundations that shape and define our business and empower our people.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4 col3">
                                <div class="row">
                                    <div class="col-sm-2 box1">
                                        <i class="fa fa-code" aria-hidden="true"></i>
                                    </div>
                                    <div class="col-sm-10 inner-content">
                                        <h3>Inclusion</h3>
                                        <p>OpsRamp Markit strives to promote an inclusive and belonging environment in which all employees feel welcomed, challenged and rewarded for their contributions.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                 
</asp:Content>
