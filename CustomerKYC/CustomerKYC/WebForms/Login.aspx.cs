﻿using CustomerKYC.DalClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
//using System.Web.UI.WebControls;

namespace CustomerKYC
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static int _attempts = 3;
        protected void Admin_Button(object sender, EventArgs e)
        {
            try
            {
                string username, password;
                username = TextBox1.Text;
                password = TextBox2.Text;
                bool result = DalLogin.CheckUser(username, password);

                if (username == null || username == "")
                {
                    Response.Write("<script>alert('Please Check your Credentials');</script>");
                    return;
                }
                if (password == null || password == "")
                {
                    Response.Write("<script>alert('Please Check your Credentials');</script>");
                    return;
                }
                if (username == "welcome" && password == "welcome")
                {
                    _attempts = 0;
                    Response.Redirect("AfterLogin.aspx");
                    Session["user_login"] = TextBox1.Text;
                }
                else if ((_attempts == 3) || (_attempts > 0))
                {
                    --_attempts;
                    String attempts = Convert.ToString(_attempts);
                    Response.Write("<script>alert('You Have Only'+'" + attempts + "'+' Attempt Left To Try');</script>");

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