using System;
using System.Collections;
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
    public partial class update1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                try
                {

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
                    con.Open();
                    int value = Add.value;
                    SqlCommand cmd6 = new SqlCommand("select  Applicant_ID,FirstName,MiddleName,PAN_Number,AADHAR_Number,PASSPORT_Number,Address,City,State,PIN,EMAIL,MobileNo,Gender from Applicant_Details where Applicant_ID= @app_id  ", con);

                    //SqlCommand cmd6 = new SqlCommand("select Applicant_ID,FirstName,MiddleName,PAN_Number,AADHAR_Number,PASSPORT_Number,Address,City,State,PIN,EMAIL,MobileNo,Gender from Applicant_Details  Applicant_ID='" + @app_id + "'", con);
                    cmd6.Parameters.AddWithValue("@app_id", value);
                    SqlDataReader myReader = cmd6.ExecuteReader();
                    while (myReader.Read())
                    {
                        app_id.Value = (myReader["Applicant_ID"].ToString());
                        first_name.Value = (myReader["FirstName"].ToString());
                        mid_name.Value = (myReader["MiddleName"].ToString());
                        pan_num.Value = (myReader["PAN_Number"].ToString());
                        aadhar_num.Value = (myReader["AADHAR_Number"].ToString());
                        pass_num.Value = (myReader["PASSPORT_Number"].ToString());
                        Address.Value = (myReader["Address"].ToString());
                        City.Value = (myReader["City"].ToString());
                        State.Value = (myReader["State"].ToString());
                        Pin.Value = (myReader["PIN"].ToString());
                        Email.Value = (myReader["EMAIL"].ToString());
                        MobileNumber.Value = (myReader["MobileNo"].ToString());
                        Gender.Value = (myReader["Gender"].ToString());

                    }

                }
                catch (Exception gf)
                {
                    Response.Write(gf);
                }
            }

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
                //if ((first_name.Value == "") || (mid_name.Value == "") || (pan_num.Value == "") || (aadhar_num.Value == "") || (pass_num.Value == "") || (mobilenumber==""))
                //{

                //    flag = 0;
                //    Response.Write(" <script>alert(" + '"' + " Please fill out mandatory details" + '"' + ");</script>");
                //}
                //if (pannum.Length == 10 && aadnum.Length == 12 && mobilenumber.Length == 10)
                //{
                //    flag = 1;
                //}
                //else
                //{
                //    if (pannum.Length != 10)
                //    {
                //        Response.Write("<span>");
                //        Response.Write(" <script>alert(" + '"' + " Please check the PAN Number" + '"' + "); </script>");
                //        Response.Write("</span>");
                //        flag = 0;
                //    }
                //    if (aadnum.Length != 12)
                //    {
                //        Response.Write("<span>");
                //        Response.Write(" <script>alert(" + '"' + " Please check the Aadhar Number" + '"' + "); </script>");
                //        Response.Write("</span>");
                //        flag = 0;
                //    }
                //    if ((mobilenumber.Length != 10))
                //    {
                //        Response.Write("<span>");
                //        Response.Write(" <script>alert(" + '"' + " Please check the mobile number" + '"' + "); </script>");
                //        Response.Write("</span>");
                //        flag = 0;
                //    }
                //}
                if (flag == 1)
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
                    con.Open();
                   
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
                    if (panstat == "SUCCESS" && passstat == "SUCCESS" && aadharstat == "SUCCESS")
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
                Response.Redirect("DisplayInfo.aspx");
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


                string path = @"../DataFile" + "\\" + app_id.Value;
                   bool exists = System.IO.Directory.Exists(Server.MapPath(path));
                 if (!exists)
                  {
                      System.IO.Directory.CreateDirectory(Server.MapPath(path));
                      FileUpload1.SaveAs(Server.MapPath(path + "\\" + FileUpload1.FileName));
                    Response.Write(" <script>alert(" + '"' + " Uploaded file successfully" + '"' + "); </script>");

                }
                else
                  {
                FileUpload1.SaveAs(Server.MapPath(path + "\\" + FileUpload1.FileName));
                    Response.Write(" <script>alert(" + '"' + " Uploaded File Successfully" + '"' + "); </script>");
                }
            }
            catch (Exception exs)
            {
                Response.Write(exs);
            }

        }
    }
}
//System.Data.SqlClient.SqlConnection con = new SqlConnection(@"Data Source=HDRBPRPA2; Initial Catalog=PrimeBankPOCdb; User ID=sa;Password=admin@123");

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

//SqlDataReader myReader = null;
//SqlCommand cmd6 = new SqlCommand("select Applicant_ID,FirstName,MiddleName,PAN_Number,AADHAR_Number,PASSPORT_Number,Address,City,State,PIN,EMAIL,MobileNo,Gender from Applicant_Details where Applicant_ID=@app_id", con);

//Response.Write("<span>");
//Response.Write(" <script>alert(" + '"' + " Please check the PAN Number" + '"' + "); </script>");
//Response.Write("</span>");

//string FilePath = (HttpContext.Current.Request.PhysicalApplicationPath) + "DataFile\\";
//string path = FilePath + app_id.Value;

//string status = "success";
//string Fstatus = "Failure";

//SqlCommand myCommand = new SqlCommand("select [Applicant_ID],[FirstName],[MiddleName],[LastName],[PAN_Number],[AADHAR_Number],[PASSPORT_Number],[Address],[City],[State],[PIN],[EMAIL],[DOB]
//      ,[MobileNo] from Applicant_Details where Applicant_ID = value, con);

//myReader = cmd6.ExecuteReader();


