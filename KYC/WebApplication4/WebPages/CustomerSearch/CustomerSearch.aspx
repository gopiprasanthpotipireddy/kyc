<%@ Page Title="" Language="C#" MasterPageFile="~/WebPages/Master_Page/Site1.Master" AutoEventWireup="true" CodeBehind="CustomerSearch.aspx.cs" Inherits="WebApplication4.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <!DOCTYPE html>
    <html>
  <%--  <head>




        <meta charset="utf-8" />
        <title>Home Page - My ASP.NET Application
        </title>
        <meta name="viewport" content="width=device-width" />
    </head>--%>
    <%--<header class="banner">
         <div class="gradient"></div>
         <div class="container">
             <div class="row">
                 <div class="col-sm-12 heading">
                     <%-- <h1 data-aos="fade-right" data-aos-delay="300">Hello and welcome to jumper</h1>
                     <h2 data-aos="fade-left" data-aos-delay="300">kickass wordpress agency theme</h2>--%>
    <%-- </div>
             </div>
         </div>
     </header--%>




    <body>




        <div class="aspNetHidden">
            <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUJNTg2MTA0MzIxD2QWAmYPDxYEHg9fX0FudGlYc3JmVG9rZW4FIGJlNTBkZDIzYWU0MDQzZWM5Y2M1YjIyMTdlNDgyZDcwHhJfX0FudGlYc3JmVXNlck5hbWVlZGRkPvfE/vZyGid6o1hGj2STJIic+CbmxZ4FBafyiJ4vXHs=" />
        </div>

        <style>
            body {
                background-image: url(../../images/banner-2.jpg);
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
            }
        </style>






        <header>
            <div class="content-wrapper">
                <div class="float-left">
                    <p class="site-title"></p>
                </div>
                <div class="float-right">
                    <section id="login"></section>
                </div>
            </div>
        </header>
        <div id="body">


<%--            <br/>
            <br/>--%>

            <form onsubmit=" return search()">
                <div style="width: 100%">





                    <div style="color: black; width: 45%; float: left; text-align: center; margin: auto; border: 5px solid; margin-left: 10%">
                        <h4 style="color: black; font-size =1;">Enter Customer Details</h4>
                        <br>
                        <table align="Center" style="font-weight: normal; width: 450px;">
                            <tr>
                                <td align="right" style="width: 150px;">Name :</td>
                                <td align="left" style="width: 150px;">
                                    <input name="txtFirstName" type="text" id="txtFirstName" style="width: 150px;" /></td>
                            </tr>




                            <tr>
                                <td align="right" style="width: 150px;">Account No :</td>
                                <td align="left" style="width: 150px;">
                                    <input name="txtAccountno" type="text" id="txtAccountno" style="width: 150px;" /></td>
                            </tr>
                            <tr>
                                <td align="right" style="width: 150px;">Phone / Mobile No :</td>
                                <td align="left" style="width: 150px;">
                                    <input name="txtPhone" type="text" id="txtPhone" style="width: 150px;" /></td>
                            </tr>
                        </table>
                        <br />
                        <div style="margin-bottom: 5px">
                            <input type="button" name="ctl00$MainContent$Submit" value="Search" id="MainContent_Submit" style="br-width: 1px; border-style: solid;" onclick="searchBtn()" /><br />
                        </div>




                    </div>
                </div>
            </form>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
        </div>
        <div class="aspNetHidden">
            <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="3EC4D561" />
            <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAbW/+iNb2jmRUCX+EvY5FjIfq+tSRzcN01GWsfFVJlC4eBgWAn+1hycEupbddmf3bfh8tpzRsq2SEbN//vhnrZhybgODiF6vycyM2L9nhqnLdfazHAMS5b8Aaoi86LCiYxx62AytrGuCIzop7CyksjM0Z1dhnAOizWmBBBk7MFQ/g==" />
        </div>




        <!-- Visual Studio Browser Link -->
        <script type="application/json" id="__browserLink_initializationData">
         {"appName":"Firefox","requestId":"2c9c3dfa30f14a528dc407217e0a25ef"}
        </script>
        <script type="text/javascript" src="http://localhost:56039/5c33a02c660b4e88a26bc81018883456/browserLink" async="async"></script>
        <!-- End Browser Link -->
        </form>
     <p id="demo"></p>
        <script>
            function searchBtn() {




                var fname = document.getElementById("txtFirstName").value;
                var acc = document.getElementById('txtAccountno').value;
                var ph = document.getElementById('txtPhone').value;










                var obj = [{ CustomerFirstName: "Anitha", CustomerLastName: "Anitha", AccountNo: "4545687980", AddressLine1: "GouthamNagar", AddressLine2: "Malkajgiri", AdrressLine3: "Secunderabad", AddressLine4: "Telangana", District: "Rangareddy", City: "Secunderabad", State: "Telangana", PinCode: "500047", Country: "India", Phone1: "3434343", Phone2: "5553423423", Fax: "3443", MobileNo: "9985646464", EmailNo: "anitha@Virtusa.com", PassportNo: "ap3454dd" },
                     { CustomerFirstName: "Rabbani", CustomerLastName: "Rabbani", AccountNo: "4545687981", AddressLine1: "Mehadipatnam", AddressLine2: "Mehadipatnam", AdrressLine3: "Hyderabad", AddressLine4: "Telangana", District: "Rangareddy", City: "Hyderabad", State: "Telangana", PinCode: "500047", Country: "India", Phone1: "0402424587", Phone2: "0402424587", Fax: "3443", MobileNo: "9985242061", EmailNo: "hajialirabbanim@Virtusa.com", PassportNo: "ap3454dd" },
                     { CustomerFirstName: "Chaitanya", CustomerLastName: "Chaitanya", AccountNo: "4545687982", AddressLine1: "GouthamNagar", AddressLine2: "Malkajgiri", AdrressLine3: "Secunderabad", AddressLine4: "Telangana", District: "Rangareddy", City: "Secunderabad", State: "Telangana", PinCode: "500047", Country: "India", Phone1: "3434343", Phone2: "5553423423", Fax: "3443", MobileNo: "9949646464", EmailNo: "anitha@A.com", PassportNo: "ap3454dd" },
                     { CustomerFirstName: "Munavar", CustomerLastName: "Khan", AccountNo: "4545687983", AddressLine1: "GouthamNagar", AddressLine2: "Malkajgiri", AdrressLine3: "Secunderabad", AddressLine4: "Telangana", District: "Rangareddy", City: "Secunderabad", State: "Telangana", PinCode: "500047", Country: "India", Phone1: "3434343", Phone2: "5553423423", Fax: "3443", MobileNo: "9642884725", EmailNo: "munavark@A.com", PassportNo: "ap3454dd" },
                     { CustomerFirstName: "Imran", CustomerLastName: "Imran", AccountNo: "4545687984", AddressLine1: "GouthamNagar", AddressLine2: "Malkajgiri", AdrressLine3: "Secunderabad", AddressLine4: "Telangana", District: "Rangareddy", City: "Secunderabad", State: "Telangana", PinCode: "500047", Country: "India", Phone1: "3434343", Phone2: "5553423423", Fax: "3443", MobileNo: "9642884725", EmailNo: "imran@A.com", PassportNo: "ap3454dd" }
                ];




                var findRecored = false;
                var table;
                for (var i = 0; i < obj.length; i++) {
                    var customerFirstName = obj[i].CustomerFirstName.toLowerCase();
                    if ((obj[i].CustomerFirstName.toLowerCase() == fname.toLowerCase()) &&
                    (obj[i].AccountNo == acc) && (obj[i].MobileNo == ph)) {
                        findRecored = true;
                        break;
                    }
                    else {
                        alert("Record not found");
                    }
                }




                if (findRecored) {
                    // window.location.href = "CustomerPage.html";
                    /* var tbl = $("<table/>").attr("id", "mytable");
                     $("#div1").append(tbl);
                         var tr = "<tr>";
                         var td1 = "<td>" + obj[i]["CustomerName"] + "</td>";
                         var td2 = "<td>" + obj[i]["AccountNo"] + "</td>";
                         var td3 = "<td>" + obj[i][" AddressLine1"] + "</td></tr>";
                
                         $("#mytable").append(tr + td1 + td2 + td3);
                         */
                    var heading = "Customer Details";
                    table = "<table border = 1>";
                    table += "<tr>" + "<td>" + "<th>" + "CustomerFirstName" + "</th>" + "</td>" + "<td>" + obj[i].CustomerFirstName + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "CustomerLastName" + "</td>" + "<td>" + obj[i].CustomerLastName + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "AccountNumber" + "</td>" + "<td>" + obj[i].AccountNo + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "AddressLine1" + "</td>" + "<td>" + obj[i].AddressLine1 + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "AddressLine2" + "</td>" + "<td>" + obj[i].AddressLine2 + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "AddressLine3" + "</td>" + "<td>" + obj[i].AddressLine3 + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "AddressLine4" + "</td>" + "<td>" + obj[i].AddressLine4 + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "District" + "</td>" + "<td>" + obj[i].District + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "City" + "</td>" + "<td>" + obj[i].City + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "State" + "</td>" + "<td>" + obj[i].State + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "Pincode" + "</td>" + "<td>" + obj[i].PinCode + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "Country" + "</td>" + "<td>" + obj[i].Country + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "Phone1" + "</td>" + "<td>" + obj[i].Phone1 + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "Phone2" + "</td>" + "<td>" + obj[i].Phone2 + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "Fax" + "</td>" + "<td>" + obj[i].Fax + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "MobileNumber" + "</td>" + "<td>" + obj[i].MobileNo + "</td>" + "</tr>";
                    table += "<tr>" + "<td>" + "Email_Id" + "</td>" + "<td>" + obj[i].EmailNo + "</td>" + "</tr>";




                    table += "<tr>" + "<td>" + "PassportNumber" + "</td>" + "<td>" + obj[i].PassportNo + "</td>" + "</tr>";




                    table += "</table>";
                    document.getElementById("demo").innerHTML = heading;
                    document.getElementById("demo").innerHTML = table;
                }
                else {
                    return false;
                }
            }










        </script>




    </body>











    </html>


</asp:Content>
