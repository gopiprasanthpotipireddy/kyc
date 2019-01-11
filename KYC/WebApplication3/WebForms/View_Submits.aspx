<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_Submits.aspx.cs" Inherits="KYC.View_Submits" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .button{
           background-color:orange; height: 90px; width: 140px; position:absolute; top:65px; right:300px;
        }
        body {
            background-image: url(../../img/image.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
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
                /*Style the required field*/
                .required{
                    color:red;
                    font-weight:bold;
                }

        /* Style the tab content */
        .tabcontent {
            display: none;
            padding: 6px 12px;
            -webkit-animation: fadeEffect 1s;
            animation: fadeEffect 1s;
        }

    </style>
</head>
<body >
   <%-- <form id="form1"  runat="server" >--%>
    <form id="form1" runat="server"  name="iframe" onload="View_OnClick">
  <%--<div class="tab">
   <asp:Button class="tablinks" id="tab6" OnClick="openCity(event,'content4')" Style="color: black;">AssociatedPersonsAndEntities</asp:Button> &nbsp;&nbsp;&nbsp;
   <asp:Button class="tablinks" id ="tab7" OnClick="openCity(event,'content5')" Style="color: black;">OwnershipDetails</asp:Button>
    </div>
         <div id="content4" class="tabcontent" >
           
             </div>
          <div id="content5" class="tabcontent" >
              <div onload="View_Ownership"></div>
             </div>--%>
    </form>
</body>
    <%--<script>
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
</script>--%>
</html>
