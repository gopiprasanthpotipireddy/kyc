<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Master_Page/Site1.Master" AutoEventWireup="true" CodeBehind="Options.aspx.cs" Inherits="WebApplication4.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   <%-- <header class="banner">
        <div class="gradient"></div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12 heading">
                    <h1 data-aos="fade-right" data-aos-delay="300"></h1>
                    <h2 data-aos="fade-left" data-aos-delay="300"></h2>
                </div>
            </div>
        </div>
    </header>--%>

    <br>
    <br>
    <>
    <div id="contact">
        <div class="container">
            <div class="row" data-aos="fade-up" data-aos-duration="800">
                <div class="col-md-12">
                     <style>
                        body{
                            background-image: url(../../images/banner-2.jpg);
                            /*background-image: url(images/meet.jpg);*/
                            background-repeat:no-repeat;
                            background-attachment:fixed;
                            background-size:cover;
                            

                         
                        }

                         button:hover {
                             background-color: black;
                         }
</style>
                      

                    <p >

                        <h3 style="color: white; text-align: center;">HEY..!!WELCOME TO THE   KYC CUSTOMER RESPONSE  </h3>
                    </p>
                    <br>
                    <p>
                        <h4 style="color: white; text-align: center;">Please check the below options and make sure you enter valid responses.Thank You</h4>
                    </p>

                    <br>
                    <br>
                    <br>




                    <button style="background-color: lightyellow; color: black; font-style: normal;height:30px; width:200px;" onclick:"chBackcolor('red');"><a href= "ClientStaticData.aspx">ClientStaticData </a></button>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

                    <button style="background-color: lightyellow; color: black;height:30px; width:200px;" onclick:"chBackcolor('red');><a href="AssociatedPersonsNEntities.aspx">AssociatePersonsData</a></button>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;

                    <button style="background-color: lightyellow; color: black;height:30px; width:200px;" onclick:"chBackcolor('red');><a href="CheckList.aspx">CheckList</a></button>


                </div>
            </div>
        </div>
    </div>

</asp:Content>
