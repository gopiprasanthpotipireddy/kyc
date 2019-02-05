using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication3.DalClasses;

namespace WebApplication3.WebForms
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=HDRBPRPA2; Initial Catalog=PrimeBankPOCdb; User ID=sa;Password=admin@123");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Applicant_Details", con);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                SqlDataReader rdr = cmd.ExecuteReader();
                con.Close();

                //SqlCommand cmd = new SqlCommand("select * from Applicant_Details", con);
                //SqlDataReader rdr = cmd.ExecuteReader();
                //SqlDataAdapter sqlda = new SqlDataAdapter("select * from Applicant_Details", con);
                //DataTable dtbl = new DataTable();
                //sqlda.Fill(dtbl);
                //GridView1.DataSource = rdr;
                //GridView1.DataBind();



                //con.Close();
                //SqlDataReader rdr = cmd.ExecuteReader();
                ////GridView1.DataSource = rdr;
                ////GridView1.DataBind();
            }
            catch (Exception exc)
            {
                Response.Write(exc);
            }
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index;
            int value;
            if (e.CommandName == "CEdit")
            {
                //     index = Convert.ToInt32(e.CommandArgument);
                //    GridViewRow row = GridView1.Rows[index];
                //     value=row.Cells[0].Text;

                //Response.Redirect("~/UpdateGridView.aspx?EmpNo=" + row.Cells[0].Text);
            }
            else if (e.CommandName == "CSave")
            {
                //index = Convert.ToInt32(e.CommandArgument);
                //GridViewRow row = GridView1.Rows[index];
                //value = row.Cells[0].Text;
                //Response.Redirect("~/UpdateGridView.aspx?EmpNo=" + row.Cells[0].Text);
            }
            else if (e.CommandName == "CAddinf")
            {
                index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                value = Convert.ToInt32(row.Cells[0].Text);
                Additional.Additional1(value);
                //retrive(value);
                //Response.Redirect("~/UpdateGridView.aspx?EmpNo=" + row.Cells[0].Text);
            }
        }
    }
       
        //public void retrive(string value)
        //{
        //    //Response.Redirect(AdditionalInfo.aspx);
        //    SqlConnection conn = new SqlConnection(@"Data Source=HDRBPRPA2; Initial Catalog=PrimeBankPOCdb; User ID=sa;Password=admin@123");
        //    conn.Open();
        //    SqlCommand cmd1 = new SqlCommand("select * from AdditionalDetails where ApplicantID=value", conn);
        //    SqlDataReader rdr = cmd1.ExecuteReader();
           
        //    DataTable dt1 = new DataTable();
        //    SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
        //    da1.Fill(dt1);
        //    GridView2.DataSource = rdr;
        //    GridView2.DataBind();
        //    conn.Close();
        //}
    }
