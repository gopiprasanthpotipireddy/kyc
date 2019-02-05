using System;
using System.Activities.Statements;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.WebForms
{
    public partial class Popup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void update(object sender, EventArgs e)
        {
            try
            {

                int flag = 1;
                // Important Details
                string appid = app_id.Value;
                string firstname = first_name.Value;
                string midname = mid_name.Value;
                string pannum = pan_num.Value;
                string panstat = Pstat.Value;
                string aadnum = aadhar_num.Value;
                string aadharstat = Astat.Value;
                string passnum = pass_num.Value;
                string passstat = pastat.Value;
                //string status = "success";
                //string Fstatus = "Failure";
                if ((first_name.Value == "") || (mid_name.Value == "") || (pan_num.Value == "") || (aadhar_num.Value == "") || (Pstat.Value == "") || (aadhar_num.Value == "") || (Astat.Value == "") || (pass_num.Value == "") || (pastat.Value == ""))
                {

                    flag = 0;
                    Response.Write("mandatory fields should not be left empty");
                }
                if (flag == 1)
                {
                    System.Data.SqlClient.SqlConnection con = new SqlConnection(@"Data Source=HDRBPRPA2; Initial Catalog=PrimeBankPOCdb; User ID=sa;Password=admin@123");
                    con.Open();
                    string updateQuery = " Update AdditionalDetails set FirstName = @firstname, MiddleName =@midname, PAN_Number = @pannum, PAN_Status = @panstat, AADHAR_Number = @aadnum, AADHAR_Status = @aadharstat, PASSPORT_Number = @passnum, PASSPORT_Status = @passstat where Applicant_ID = @app_id; ";
                    SqlCommand com = new SqlCommand(updateQuery, con);
                    
                    com.Parameters.AddWithValue("@app_id", app_id.Value);
                    com.Parameters.AddWithValue("@firstname", first_name.Value);
                    com.Parameters.AddWithValue("@midname", mid_name.Value);
                    com.Parameters.AddWithValue("@pannum", pan_num.Value);
                    com.Parameters.AddWithValue("@panstat", Pstat.Value);
                    com.Parameters.AddWithValue("@aadnum ", aadhar_num.Value);
                    com.Parameters.AddWithValue("@aadharstat", Astat.Value);
                    com.Parameters.AddWithValue("@passnum", pass_num.Value);
                    com.Parameters.AddWithValue("@passstat", pastat.Value);
                    com.ExecuteNonQuery();
                    string updateQuery1 = " Update Applicant_Details set  FirstName = @firstname, MiddleName = @midname, PAN_Number = @pannum, AADHAR_Number = @aadnum, PASSPORT_Number = @passnum where Applicant_id=@app_id; ";
                    SqlCommand com1 = new SqlCommand(updateQuery1, con);
                    com1.Parameters.AddWithValue("@app_id", app_id.Value);
                    com1.Parameters.AddWithValue("@firstname", first_name.Value);
                    com1.Parameters.AddWithValue("@midname", mid_name.Value);
                    com1.Parameters.AddWithValue("@pannum", pan_num.Value);
                    com1.Parameters.AddWithValue("@aadnum ", aadhar_num.Value);
                    com1.Parameters.AddWithValue("@passnum", pass_num.Value);
                    com1.ExecuteNonQuery();
                    if (panstat == "Success" && passstat == "Success" && aadharstat=="Success")
                    {
                        SqlCommand cmd2 = new SqlCommand("Update demotb set OVERALL_Status = 'SUCCESS' " , con);
                        cmd2.ExecuteNonQuery();

                    }
                    else
                    {
                        SqlCommand cmd3 = new SqlCommand("update AdditionalDetails set OVERALL_Status='FAILURE'", con);
                        cmd3.ExecuteNonQuery();
                    }
                    con.Close();
                }
                else
                {
                    Response.Write("Check the details properly");
                }
                Response.Redirect("subs.aspx");
            }
            catch(SqlException exp1)
            {
                Response.Write(exp1);
            }
            }
        }
    }

                    //SqlCommand cmd = new SqlCommand("Insert into  AdditionalDetails(ApplicantID,FirstName, MiddleName, PAN_Number,AADHAR_Number,PASSPORT_Number,AADHAR_Status,PAN_Status,PASSPORT_Status) Values('" + appid + "', '" + firstname + "', '" + midname + "','" + pannum + "','" + aadnum + "','" + passnum + "','" + aadharstat + "','" + panstat + "','" + passstat + "')", con);
                    //SqlCommand cmd = new SqlCommand(" Update  AdditionalDetails set FirstName=first_name.Value , MiddleName=mid_name.Value , PAN_Number=pan_num.Value , PAN_Status=Pstat.Value , AADHAR_Number=aadhar_num.Value , AADHAR_Status=Astat.Value , PASSPORT_Number=pass_num.Value , PASSPORT_Status=pastat.Value where  ApplicantID=app_id.Value;", con);
                    //cmd.ExecuteNonQuery();
                    //Response.Write("updated into additional details");
                    //cmd1.ExecuteNonQuery();
                    //Response.Write("updated into Applicant details");