<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KYC.WebForm3" %>




<!DOCTYPE html>




<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <link rel="stylesheet" href="css/main.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="contact">
                <div class="container">
                    <div class="row" data-aos="fade-up" data-aos-duration="800">
                        <div class="col-md-12">
                              <style>
                                body {
                                    background-image: url(../../img/image.jpg);
                                    background-repeat: no-repeat;
                                    background-attachment: fixed;
                                    background-size: cover;
                                }
                            </style>
                            <br>
                            <h2 style="color:black; text-align: center;">Admin Login</h2>
                            <br>
                            <br>
                            <div style="text-align: center">
                               <span style="color:black; text-align: center;">User Name</span><br>
                                <%--<input type="text" name="username" id="TextBox1" />--%><asp:TextBox ID="TextBox1" runat="server" Style="height: 30px; width: 200px;"></asp:TextBox>
                                <br>
                                <span style="color:black; text-align: center;">Password</span><br>
                                <%--<input type="password" name="password" id="TextBox2" />--%><asp:TextBox ID="TextBox2" type="password" runat="server" Style="height: 30px; width: 200px;"></asp:TextBox>
                                <br>
                                <br>
                                <!--input type="button" value="Login" id="submit" onclick="validate()" /-->
                                <%--<asp: button type="submit" onclick="Button1_Click" id="submit" class="btn btn-primary px-4">Login</asp:>--%>
                                <%--<asp: Button type= "submit" id="submit" runat="server"  OnClick="Button1_Click"/>--%>
                                <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Admin_Button" Style="background-color: orange; height: 40px; width: 200px;" />
                                </div>
                           </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>







                      




                            




                            

