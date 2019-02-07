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
    public partial class DisplayInfo : System.Web.UI.Page
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
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
                //SqlConnection con = new SqlConnection(@"Data Source=HDRBPRPA2; Initial Catalog=PrimeBankPOCdb; User ID=sa;Password=admin@123");
                con.Open();
                SqlCommand cmd = new SqlCommand("select Applicant_ID,FirstName,MiddleName,LastName,PAN_Number,AADHAR_Number,PASSPORT_Number,PAN_Status,AADHAR_Status,PASSPORT_Status,OVERALL_Status,Remarks    from Applicant_Details", con);
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
        //public void test(Object sender, EventArgs e)
        //{
        //    try
        //    {

        //        GridViewRow row = GridView1.SelectedRow;
        //        value = Convert.ToInt32(row.Cells[0].Text);
        //        Additional.Additional1(value);
        //        Response.Redirect("Additional.aspx");
        //    }
        //    catch(Exception exd)
        //    {
        //        Response.Write(exd);
        //    }
        //}
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {


                //int index;
                //int value;
                int value1;
                if (e.CommandName == "CEdit")
                {
                    Response.Redirect("UpdateForm.aspx");
                    //index = Convert.ToInt32(e.CommandArgument);
                    //GridViewRow row = GridView1.Rows[index];
                    //value = Convert.ToInt32(row.Cells[0].Text);
                    //Add.Additional1(value);
                    ////Response.Redirect("~/UpdateGridView.aspx?EmpNo=" + row.Cells[0].Text);
                }
                else if (e.CommandName == "CSave")
                {
                    //index = Convert.ToInt32(e.CommandArgument);
                    //GridViewRow row = GridView1.Rows[index];
                    //value = row.Cells[0].Text;
                    //Response.Redirect("~/UpdateGridView.aspx?EmpNo=" + row.Cells[0].Text);
                }
                else if (e.CommandName == "CAddInf")
                {
                    int rowIndex = Convert.ToInt32(e.CommandArgument);
                    GridViewRow row = GridView1.Rows[rowIndex];
                    //int va = Convert.ToInt32((row.FindControl("Applicant_ID") as TextBox).Text);
                    value1 = Convert.ToInt32(row.Cells[0].Text);
                    Add.Additional1(value1);
                    Response.Redirect("AdditionalData.aspx");

                    //retrieve(value1);
                    //Response.Redirect("~/UpdateGridView.aspx?EmpNo=" + row.Cells[0].Text);
                }
            }
            catch (Exception exd)
            {
                Response.Write(exd);
            }
        }
    }
}