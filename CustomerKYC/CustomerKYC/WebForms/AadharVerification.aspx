<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AadharVerification.aspx.cs" Inherits="CustomerKYC.WebForms.AadharVerification" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
     /* Style the tab */
        .tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #0f3f6a;
        }

            /* Style the buttons inside the tab */
            .tab button {
                background-color:#0f3f6a;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 10px 20px;
                transition: 0.3s;
                font-size: 17px;
            }

                /* Change background color of buttons on hover */
                .tab button:hover {
                    background-color: black;
                }

                /* Create an active/current tablink class */
                .tab button.active {
                    background-color: black;
                }
               

        /* Style the tab content */
        .tabcontent {
            display: none;
            padding: 6px 12px;
            -webkit-animation: fadeEffect 1s;
            animation: fadeEffect 1s;
        }
       
        
        input[type="text"] {
         width: 200px;
     }
        .main {
            margin-left: 200px;
            margin-right:100px; /* Same as the width of the sidenav */
        }
        .button{
              background-color:#0f3f6a;
            /*background-image:-o-linear-gradient(top,#39ad13,#39ad13);
            background-image:linear-gradient(rgb(57, 173, 19), rgb(57, 173, 19));*/
            width:200px;
            height:50px;
            
        }
        .content {
    width: 500px;
   text-align:center;
height: 500px; 
position: absolute;
top: 30%;
left: 40%;
background: white;
padding: 10px;
margin-top: -100px; 
margin-left: -150px; 
}
        #Aadhartable {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#Aadhartable tr td{
  padding:30px;
}
#Aadhartable tr:nth-child(even){background-color: #f2f2f2;}
#Aadhartable tr:hover {background-color: #ddd;}
       
        /*.usernameLabel{
           font-size:x-large;
            font-family:Calibri;
        }*/
        </style>
</head>
<body>
   
    <form runat="server" >
   
      <%--<h1 style="text-align:center; color:black;">Aadhar Verification <img src="images/Aadharsymbol.jpg" width="90" height="50"/></h1>--%>
      
      <%-- <div class ="main">
       <div class="tab">
                <asp:Button class="tablinks" id="Aadhar" OnClick="openCity(event,'content1')" Style="color: white;">AADHAR VERIFICATION</asp:Button> &nbsp;&nbsp;&nbsp;
                <asp:Button class="tablinks" id ="EnrollRGetAadhaar" OnClick="openCity(event, 'content2')" Style="color: white;">ENROLL & GET AADHAAR</asp:Button>&nbsp;&nbsp;&nbsp;
                 <asp:Button class="tablinks" id ="Aadhaar update" OnClick="openCity(event, 'content3')" Style="color: white;">AADHAAR UPDATE</asp:Button>&nbsp;&nbsp;&nbsp;
                 <asp:Button class="tablinks" id ="FAQ" OnClick="openCity(event, 'content4')" Style="color: white;">FAQ</asp:Button>&nbsp;&nbsp;&nbsp;
                <asp:Button class="tablinks" id="Contacts" OnClick="openCity(event, 'content5')" Style="color: white;">CONTACTS</asp:Button>
              <asp:Button class="tablinks" id="Logout" OnClick="Login.aspx" Style="color: white;">LOGOUT</asp:Button>
             
<%--                 <input id="Button1" runat="server" type="button" onserverclick="submit_OnClick" style="background-color:white;height:50px; width:120px;position:absolute;top:65px;right:300px;" value="submit" />--%>
                <%--<input id="Button2" runat="server" type="button" onserverclick="View_OnClick" style="background-color:white;height:50px; width:120px;" value="View_submit" />--%>
          <%--  </div>--%>
         <div id ="content1" >
             <div class="main">
                 <%--<h2 style="text-decoration-color:Highlight; font-size:30px;"> Verify Aadhaar </h2>
                 <br/>
                 <br/>
               <label id="AadharLabel" style="font-size:30px;" runat="server">Enter Aadhaar Number :</label>
                 <input type="text" id="AadharNumber" runat="server" />
                 <br/>
                <br/>
                 <asp:Button ID="VerifyButton" class="button" runat="server" Text="Verify" style ="color:white;font-size:large;" onclick ="verify"/>
            --%>
                  <div class="content">
      <h1 style="text-align:center; color:black;" id="LoginHead">Aadhar Verification</h1>
        <table id="Aadhartable">
      

  <tr>
   <td  style="text-align:left"><label  id="AadharLabel" runat="server" style="font-size:20px;" runat="server" >Enter Aadhaar Number:</label></td>
    <td> <input type="text" id="AadharNumber" runat="server" /> </td>
  </tr>
 <%-- <tr><td><br/></td></tr>--%>
          <%-- <tr><td><br/></td></tr>--%>
      
          
 <tr>
     <td><asp:Button ID="VerifyButton" class="button" runat="server" Text="Verify" style ="color:white;font-size:large;" onclick ="verify" /></td>
     </tr>
 
</table>
        

    </div>
                 </div>
         </div>
       
    </form>
 
</body>
    <%-- <script>
         
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
