using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication3.DalClasses;

namespace WebApplication3.WebForms
{
    public partial class AadharLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        static int _attempts1 = 3;
        protected void Login_Click(object sender, EventArgs e)
        {


            //string username = Username.Text;
            //string password = Password.Text;
            //string uname = "admin";
            //string pwd = "admin";
            //if (username == "")
            //{
            //    Response.Write("<span>");
            //    Response.Write(" <script>alert(" + '"' + "Username Field Can't be empty" + '"' + "); </script>");
            //    Response.Write("</span>");
            //}
            //if (password == "")
            //{
            //    Response.Write("<span>");
            //    Response.Write(" <script>alert(" + '"' + "Password Field Can't be Empty" + '"' + "); </script>");
            //    Response.Write("</span>");
            //}
            //if ((username == uname) && (password == pwd))
            //{
            //    Response.Redirect("AadharVerification.aspx");
            //}
            //else
            //{
            //    Response.Write("< p id = 'Label1'' style='height: 16px; width: 120px; Z - INDEX: 102; LEFT: 288px; POSITION: absolute; TOP: 144px; background - color: yellow;'>");
            //    Response.Write("<script>alert(" + '"' + "Incorrect Username or Password" + '"' + "); </script>");
            //    Response.Write("</p>");
            //}

            try
            {
                string username1, password1;
                username1 = Username.Text;
                password1 = Password.Text;
                bool result = VerifyAdharLogin.Login(username1, password1);

                if (username1 == null || username1 == "")
                {
                    Response.Write("<script>alert('Please Check your Credentials');</script>");
                    return;
                }
                if (password1 == null || password1 == "")
                {
                    Response.Write("<script>alert('Please Check your Credentials');</script>");
                    return;
                }
                if (username1 == "admin" && password1 == "admin")
                {
                    _attempts1 = 0;
                    Response.Redirect("AadharVerification.aspx");
                    //Session["user_login"] = TextBox3.Text;
                }
                else if ((_attempts1 == 3) || (_attempts1 > 0))
                {
                    --_attempts1;
                    String attempts1 = Convert.ToString(_attempts1);
                    Response.Write("<script>alert('You Have Only'+'" + attempts1 + "'+' Attempt Left To Try');</script>");

                }
                else
                {
                    Response.Write("<script>alert('Sorry! please try later.');window.close();</script>");
                }
            }
            catch (Exception exp)
            {
                Response.Write("Null Reference Exception");
            }

        }
    }
}