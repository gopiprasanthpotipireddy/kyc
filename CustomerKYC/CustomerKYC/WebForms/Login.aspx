<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CustomerKYC.WebForms.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background: #0f3f6a;
        }

        .content {
            width: 500px;
            text-align: center;
            height: 500px;
            position: absolute;
            top: 40%;
            left: 30%;
            background: white;
            padding: 10px;
            margin-top: -100px;
            margin-left: -150px;
        }

        #logintable {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

            #logintable tr td {
                padding: 30px;
            }

            #logintable tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            #logintable tr:hover {
                background-color: #ddd;
            }

        .greenbutton {
            background: #0f3f6a;
            width: 200px;
            height: 50px;
        }

        header {
            background-color: white;
            padding: 2px;
            text-align: left;
            font-size: 35px;
            color: #0f3f6a;
        }
        article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #0f3f6a;
  height: 750px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}
        footer {
  background-color:white;
  padding: 10px;
  text-align: center;
  color: white;
}
   ul {
             list-style-type: none;
             margin: 0;
             padding: 0;
             overflow: hidden;
             background-color: orange;
             position: relative;
             left: 0px;
         }

        li {
             float: left;
         }

            li a {
                 display: block;
                 color: white;
                 text-align: center;
                 padding: 6px 16px;
                 text-decoration: none;
                 left: 1500px;
                 position: relative;
             }

                li a:hover:not(.active) {
                     background-color: #791717;
                 }

        .active {
             background-color: #791717;
         }

/*.active {
  background-color: white;
}*/

    </style>
</head>
<body>
    <form runat="server">
        <header>
            <h3 style="text-align: left; color: #0f3f6a; top: 70px;" id="Aadharhead">Aadhar Verification
                <img src="../images/Aadharsymbol.jpg" width="90" height="50" /></h3>
        </header>
        <div>
            <ul>
  <li><a class="active" href="#home">Home</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#about">About</a></li>
</ul>
        </div>
        <section>
        <article>
        <div class="content">
            <h1 style="text-align:left; color:#0f3f6a;font-size:30px;position:relative;left:30px;" id="LoginHead">Login!</h1>
            <table id="logintable">


                <tr>
                    <td style="text-align: left">
                        <label id="UsernameLabel" runat="server" style="color:#0f3f6a;font-size:15px;">Username:</label></td>
                    <td>
                        <input type="text" id="UsernameText" runat="server" style="border-color:#0f3f6a;padding:4px;" /></td>
                </tr>
                <tr>
                    <td style="text-align: left">
                        <label id="PasswordLabel" runat="server" style="color:#0f3f6a;font-size:15px;" >Password:</label></td>
                    <td>
                        <input type="password" id="PasswordText" runat="server" style="border-color:#0f3f6a;padding:4px;" /></td>
                </tr>
                <tr>
                    <td>
                        <p id="message"></p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="LoginButton" runat="server" Class="greenbutton" Style="color: white;" Text="Login" OnClick="Login_Click" /></td>
                </tr>

            </table>


        </div>
        </article>
        </section>
        <footer>
  <%--<p>Footer</p>--%>
            <img src="../images/Aadharsymbol.jpg" width="90" height="50" />
</footer>

    </form>
    <%-- <script>
        function LoginClick() {
            var username = document.getElementById('UsernameText');
            var password = document.getElementById('PasswordText');
            var errormessage;
            if (username == "admin" && password == "admin") {
                window.location("AadharVerification.aspx");
            }
            else {
                errormessage = "Wrong Credentials";
                document.getElementById('message').innerHTML = errormessage;
            }
            
        }
        </script>--%>
</body>
</html>
