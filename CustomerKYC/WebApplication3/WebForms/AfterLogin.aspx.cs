using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>alert('Please Check your Credentials');</script>");
                Response.Redirect("Home.aspx");
                return;
            }
        }
        protected void NewCase(object sender , EventArgs e)
        {
            Response.Redirect("iframe.aspx");
        }
        public void Logout(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            System.Web.Security.FormsAuthentication.SignOut();
            Response.Redirect("Home.aspx", false);
        }
    }
}