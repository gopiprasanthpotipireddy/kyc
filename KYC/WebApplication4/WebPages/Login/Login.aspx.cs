using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        static int _attempts = 3;
        /// <summary>
        /// login button for customer...
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Login_Button(object sender, EventArgs e)
        {
            string username, password;
            username = TextBox1.Text;
            password = TextBox2.Text;
  
            if (username == null || username == "")
            {
                Response.Write("<script>alert('Username cannot be empty');</script>");
                return;
            }
            if (password == null || password == "")
            {
                Response.Write("<script>alert('Password cannot be empty');</script>");
                return;
            }
            if (username == "welcome" && password == "welcome")
            {
                _attempts = 0;

                Response.Redirect("../../WebPages/Buttons/Options.aspx");

                //Response.Redirect = 'WebPages/Options/Options.aspx';
            }
            else if ((_attempts == 3) || (_attempts > 0))
            {
                --_attempts;
                String attempts = Convert.ToString(_attempts);
                Response.Write("<script>alert('You Have Only'+'"+attempts+"'+' Attempt Left To Try');</script>");
               
            }
            else
            {
                Response.Write("<script>alert('Sorry! please try later.');window.close();</script>");
            }

        }
    }
}