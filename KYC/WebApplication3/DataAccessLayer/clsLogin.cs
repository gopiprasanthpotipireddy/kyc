using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KYC
{
    public static class clsLogin
    {
        static int _attempts = 3;
        public static bool CheckUser(string username, string password)
        {


            if (username == "welcome" && password == "welcome")
            {
                _attempts = 0;
                //HttpResponse.Redirect("~/WebForms/Options.aspx");
                //Session["user_login"] = TextBox2.Text;
                return true;

            }
            else if ((_attempts == 3) || (_attempts > 0))
            {
                --_attempts;
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