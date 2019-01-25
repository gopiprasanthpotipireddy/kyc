using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomerKYC.WebForms
{
    public partial class AadharLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login_Click(object sender, EventArgs e)
        {
            try
            {
                string username = UsernameText.Value;
                string password = PasswordText.Value;
                string uname = "admin";
                string pwd = "admin";
                if (username == "")
                {
                    Response.Write("<span>");
                    Response.Write(" <script>alert(" + '"' + "Username Field Can't be empty" + '"' + "); </script>");
                    Response.Write("</span>");
                }
                if (password == "")
                {
                    Response.Write("<span>");
                    Response.Write(" <script>alert(" + '"' + "Password Field Can't be Empty" + '"' + "); </script>");
                    Response.Write("</span>");
                }
                if ((username == uname) && (password == pwd))
                {
                    Response.Redirect("AadharVerification.aspx");
                }
                else
                {
                    Response.Write("< p id = 'Label1'' style='height: 16px; width: 120px; Z - INDEX: 102; LEFT: 288px; POSITION: absolute; TOP: 144px; background - color: yellow;'>");
                    Response.Write("<script>alert(" + '"' + "Incorrect Username or Password" + '"' + "); </script>");
                    Response.Write("</p>");
                }
            }
            catch (Exception exp)
            {
                Response.Write("Null Pointer Exception");
            }

        }
    }
}
