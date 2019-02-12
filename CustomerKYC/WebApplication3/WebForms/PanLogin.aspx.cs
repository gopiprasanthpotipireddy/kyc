using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication3.DalClasses;

namespace WebApplication3.WebForms
{
    public partial class PanLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        static int _attempts1 = 3;
        public void Admin_Button1(object sender, EventArgs e)
        {

            try
            {
                string username1, password1;
                username1 = TextBox3.Text;
                password1 = TextBox4.Text;
                Session["username1"] = username1;
                bool result = VerifyPanLogin.Rambo(username1, password1);

                if (username1 == null)
                {
                    Response.Write("<script>alert('Please Check your Credentials');</script>");
                    return;
                }
                if (password1 == null || password1 == "")
                {
                    Response.Write("<script>alert('Please Check your Credentials');</script>");
                    return;
                }
                if (username1 == "welcome" && password1 == "welcome")
                {
                    _attempts1 = 0;
                    Response.Redirect("PanId.aspx");
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
            catch (Exception exp7)
            {
                Response.Write(exp7);
            }
        }
            public void Logout(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            System.Web.Security.FormsAuthentication.SignOut();
            Response.Redirect("AfterLogin.aspx", false);
        }

    }
    }
