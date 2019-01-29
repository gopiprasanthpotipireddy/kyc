using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication3.DalClasses
{
    public class VerifyAdharLogin
    {
        static int _attempts1 = 3;

        public static bool Login(string username1, string password1)
        {


            if (username1 == "admin" && password1 == "admin")
            {
                _attempts1 = 0;
                //HttpResponse.Redirect("~/WebForms/Options.aspx");
                //Session["user_login"] = TextBox2.Text;
                return true;

            }
            else if ((_attempts1 == 3) || (_attempts1 > 0))
            {
                --_attempts1;
                return false;
                // String attempts = Convert.ToString(_attempts);
                //Response.Write("<script>alert('You Have Only'+'" + attempts + "'+' Attempt Left To Try');</script>");

            }
            else
            {
                //Response.Write("<script>alert('Sorry! please try later.');window.close();</script>");
                return false;
            }

        }
    }
}