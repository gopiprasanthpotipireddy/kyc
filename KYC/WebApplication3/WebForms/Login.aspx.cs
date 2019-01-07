using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
//using System.Web.UI.WebControls;

namespace KYC
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Admin_Button(object sender, EventArgs e)
        {
            bool isValidUser = false;

            string username, password;
            username = TextBox1.Text;
            password = TextBox2.Text;

            isValidUser = Hello.CheckUser(username, password);
            if (isValidUser)
            {
                Response.Redirect("~/WebForms/Options.aspx");
                //Session["username_login"] = TextBox1.Text;
            }
            if (!(isValidUser))
            {

                Response.Write("<script>alert('Please Check your Credentials');</script>");
                //return false;
            }
            if (password == null || password == "")
            {
                Response.Write("<script>alert('Please Check your Credentials');</script>");
                //return false;
            }


        }
    }
}