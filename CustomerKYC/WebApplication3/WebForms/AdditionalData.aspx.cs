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
	public partial class AdditionalData : System.Web.UI.Page
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
            try
            {
                int value = Add.value;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
                //SqlConnection con = new SqlConnection(@"Data Source=HDRBPRPA2; Initial Catalog=PrimeBankPOCdb; User ID=sa;Password=admin@123");
                con.Open();
                SqlCommand cmd6 = new SqlCommand("select Applicant_ID,Address,city,state,PIN,EMAIL,DOB,MobileNo,Gender from Applicant_Details where Applicant_ID=@app_id", con);
                cmd6.Parameters.AddWithValue("@app_id", value);
                DataTable dt = new DataTable();

                SqlDataAdapter da = new SqlDataAdapter(cmd6);
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                SqlDataReader rdr = cmd6.ExecuteReader();

                con.Close();
            }
            catch (Exception exp3)
            {
                Response.Write(exp3);
            }
        }
    }
}