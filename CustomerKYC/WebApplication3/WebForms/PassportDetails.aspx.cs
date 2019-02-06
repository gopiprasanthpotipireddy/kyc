using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication3.DalClasses;

namespace WebApplication3.WebForms
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                BindGridView();
            }
        }
        public void BindGridView()
        {
            //clsPassPortverification p = new clsPassPortverification();
            string value= PassPortverification.value1;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
            //SqlConnection conn = new SqlConnection(@"Data Source=HDRBPRPA2; Initial Catalog=PrimeBankPOCdb; User ID=sa;Password=admin@123");
            con.Open();
            SqlCommand cmd3 = new SqlCommand("select * from Passport_Details where PassportNumber=@Passport", con);
            cmd3.Parameters.AddWithValue("@Passport", value);
            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd3);
            da1.Fill(dt1);
            GridView1.DataSource = dt1;
            GridView1.DataBind();
            SqlDataReader rdr0 = cmd3.ExecuteReader();
            con.Close();
        }
    }
}