<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="CustomerKYC.WebForms.Logout" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .content {
    width: 500px;
   text-align:center;
height: 200px; 
position: absolute;
top: 30%;
left: 40%;
background:  #0f3f6a; 
 
padding: 10px;
margin-top: -100px; 
margin-left: -150px; 
}
        </style>
</head>
<body>
    <form id="LogOutform" runat="server">
    <div class="content">
      <p style ="color:white;">Successfully Logged Out!</p>
      <a href="Login.aspx" style="color:white;">Login</a>
    </div>
    </form>
</body>
</html>
