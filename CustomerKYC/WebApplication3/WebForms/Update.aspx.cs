using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.WebForms
{
    public partial class WebForm5 : System.Web.UI.Page
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
                string address = Address.Value;
                string city = City.Value;
                string state = State.Value;
                string pin = Pin.Value;
                string email = Email.Value;
                string mobilenumber = MobileNumber.Value;
                string gender = Gender.Value;
                //string status = "success";
                //string Fstatus = "Failure";
                if ((first_name.Value == "") || (mid_name.Value == "") || (pan_num.Value == "") || (aadhar_num.Value == "") || (Pstat.Value == "") || (aadhar_num.Value == "") || (Astat.Value == "") || (pass_num.Value == "") || (pastat.Value == ""))
                {

                    flag = 0;
                    Response.Write("mandatory fields should not be left empty");
                }
                if (flag == 1)
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
                    //System.Data.SqlClient.SqlConnection con = new SqlConnection(@"Data Source=HDRBPRPA2; Initial Catalog=PrimeBankPOCdb; User ID=sa;Password=admin@123");
                    con.Open();
                    //string updateQuery = " Update AdditionalDetails set FirstName = @firstname, MiddleName =@midname, PAN_Number = @pannum, PAN_Status = @panstat, AADHAR_Number = @aadnum, AADHAR_Status = @aadharstat, PASSPORT_Number = @passnum, PASSPORT_Status = @passstat where Applicant_ID = @app_id; ";
                    //SqlCommand com = new SqlCommand(updateQuery, con);

                    //com.Parameters.AddWithValue("@app_id", app_id.Value);
                    //com.Parameters.AddWithValue("@firstname", first_name.Value);
                    //com.Parameters.AddWithValue("@midname", mid_name.Value);
                    //com.Parameters.AddWithValue("@pannum", pan_num.Value);
                    //com.Parameters.AddWithValue("@panstat", Pstat.Value);
                    //com.Parameters.AddWithValue("@aadnum ", aadhar_num.Value);
                    //com.Parameters.AddWithValue("@aadharstat", Astat.Value);
                    //com.Parameters.AddWithValue("@passnum", pass_num.Value);
                    //com.Parameters.AddWithValue("@passstat", pastat.Value);
                    //com.ExecuteNonQuery();
                    string updateQuery1 = " Update Applicant_Details set  FirstName = @firstname, MiddleName = @midname, PAN_Number = @pannum, AADHAR_Number = @aadnum, PASSPORT_Number = @passnum,PAN_Status=@panstat,AADHAR_Status=@aadharstat,PASSPORT_Status=@passstat,Address=@address,City=@city,State=@state,PIN=@pin,EMAIL=@email,MobileNo=@mobilenumber,Gender=@gender where Applicant_id=@app_id; ";
                    SqlCommand com1 = new SqlCommand(updateQuery1, con);
                    com1.Parameters.AddWithValue("@app_id", appid);
                    com1.Parameters.AddWithValue("@firstname", firstname);
                    com1.Parameters.AddWithValue("@midname", midname);
                    com1.Parameters.AddWithValue("@pannum", pannum);
                    com1.Parameters.AddWithValue("@aadnum ", aadnum);
                    com1.Parameters.AddWithValue("@passnum", passnum);
                    com1.Parameters.AddWithValue("@panstat", panstat);
                    com1.Parameters.AddWithValue("@aadharstat", aadharstat);
                    com1.Parameters.AddWithValue("@passstat", passstat);
                    com1.Parameters.AddWithValue("@address", address);
                    com1.Parameters.AddWithValue("@city", city);
                    com1.Parameters.AddWithValue("@state", state);
                    com1.Parameters.AddWithValue("@pin", pin);
                    com1.Parameters.AddWithValue("@email", email);
                    com1.Parameters.AddWithValue("@mobilenumber", mobilenumber);
                    com1.Parameters.AddWithValue("@gender", gender);

                    com1.ExecuteNonQuery();
                    if (panstat == "Success" && passstat == "Success" && aadharstat == "Success")
                    {
                        SqlCommand cmd2 = new SqlCommand("Update Applicant_Details set OVERALL_Status = 'SUCCESS' ", con);
                        cmd2.ExecuteNonQuery();

                    }
                    else
                    {
                        SqlCommand cmd3 = new SqlCommand("update Applicant_Details set OVERALL_Status='FAILURE'", con);
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
            catch (SqlException exp1)
            {
                Response.Write(exp1);
            }
        }
        public void upload(object sender, EventArgs e)
        {
            try
            {


                string path = "../DataFile" + "\\"+app_id.Value;
                bool exists = System.IO.Directory.Exists(Server.MapPath(path));
                if (!exists)
                {
                    System.IO.Directory.CreateDirectory(Server.MapPath(path));
                    FileUpload1.SaveAs(Server.MapPath(path + "\\" + FileUpload1.FileName));
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath(path + "\\" + FileUpload1.FileName));

                }
            }catch(Exception exs)
            {
                Response.Write(exs);
            }

        }
    }
}