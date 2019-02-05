using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.WebForms
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=HDRBPRPA2; Initial Catalog=PrimeBankPOCdb; User ID=sa;Password=admin@123");
            //            con.Open();
            //            SqlCommand cmd = new SqlCommand("select * from Applicant_Details", con);
            //            SqlDataReader rdr = cmd.ExecuteReader();
            //            gridview1.DataSource = rdr;
            //            gridview1.DataBind();
            //            con.Close();
        }
    }
}