using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Text;
using System.Web;
using WebApplication3.DalClasses;

namespace WebApplication3
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ViewSubmits(object sender, EventArgs e)
        {
           
            //string FilePath = (HttpContext.Current.Request.PhysicalApplicationPath) + "csv\\details.csv";
            //var reader = new StreamReader(File.OpenRead(FilePath));
            //Response.Write("<html>");
            //Response.Write(" <p><h4>Details</h4><p>");

            //Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color :black; font-size: 40px;'>");

            //Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color : black; font-size: 40px;'>");

            //Response.Write("<center>");
            //Response.Write("<table border = 1 style = 'border-width: 20px; width: 100%; height: 100px;' >");
            //Response.Write("<tr>");

            //Response.Write("<th  style = 'text-align: center;'> Prefix</th>");
            //Response.Write("<th  style = 'text-align: center;'>First Name</th>");
            //Response.Write("<th  style = 'text-align: center;'>Middle Name</th>");
            //Response.Write("<th  style = 'text-align: center;'>Last Name</th>");
            //Response.Write("<th  style = 'text-align: center;'>Pan Number</th> ");
            //Response.Write("<th  style = 'text-align: center;'>Aadhar Number</th>");
            //Response.Write("<th  style = 'text-align: center;'>Passport Number</th>");
            //Response.Write("<th  style = 'text-align: center;'>Occupation</th>");
            //Response.Write("<th  style = 'text-align: center;'>Mobile Number  </th>");
            //Response.Write("<th  style = 'text-align: center;'> Email Id   </th>");
            //Response.Write("<th  style = 'text-align: center;'>Overall Status</th>");
            //Response.Write("<th  style = 'text-align: center;'>ID Verification</th>");
            ////Response.Write("<th><a href='ID Verification'>Id Verification</a></th>");
            //Response.Write("<th  style = 'text-align: center;'>Address Verification</th>");
            //Response.Write("<th  style = 'text-align: center;'>Sanction Screening</th>");
            //Response.Write("<th  style = 'text-align: center;'>Credit Risk</th>");

            ////Response.Write("<th  style = 'text-align: center;'>Source of Funds</th>");
            ////Response.Write("<th  style = 'text-align: center;'>Gross Annual Income</th>");
            ////Response.Write("<th  style = 'text-align: center;'>Residence Type</th>");
            ////Response.Write("<th  style = 'text-align: center;'>Flat No./Building Name </th>");
            ////Response.Write("<th  style = 'text-align: center;'>Street Number </th>");
            ////Response.Write("<th  style = 'text-align: center;'>Landmark </th>");
            ////Response.Write("<th  style = 'text-align: center;'>State  </th>");
            ////Response.Write("<th  style = 'text-align: center;'>City</th>");
            ////Response.Write("<th  style = 'text-align: center;'>PIN Code </th>");
            ////Response.Write("<th  style = 'text-align: center;'>Country   </th>");


            //Response.Write("</tr>");
            //while (!reader.EndOfStream)
            //{
            //    var line = reader.ReadLine();
            //    var values = line.Split(',');

            //    int i = 0;
            //    Response.Write("<tr>");

            //    for (i = 0; i < values.Length; i++)
            //    {
            //        Response.Write("<td style = 'text-align: center;'>");
            //        Response.Write(string.Format("{0}", values[i]));
            //        Response.Write("</td>");
            //        Response.Write("\n");
            //    }

            //    Response.Write("<td>");     // Overall Status
            //    Response.Write("Approved");
            //    Response.Write("</td>");

            //    Response.Write("<td>");   // Id Verification
            //    Response.Write("<a href='PanLogin.aspx'>Not Initiated</a>");
            //    Response.Write("</td>");

            //    Response.Write("<td>");  //Address Verification
            //    Response.Write("<a href='Login.aspx'>Yes</a>");
            //    Response.Write("</td>");

            //    Response.Write("<td>");  //Sanction Screening
            //    Response.Write("");
            //    Response.Write("</td>");

            //    Response.Write("<td>");  // Cibil Score
            //    Response.Write("");
            //    Response.Write("</td>");

            //    Response.Write("<td><input type='button' value='Additional Information' onclick= 'openPopup()' runat='server'/></td>");
            //    //Response.Write("<td><a href='AdditionalInfo.aspx'>Additional Information</a></td>");
            //    //Response.Write("<td>");              
            //    Response.Write("<td><a href='#'>Save</a></td>");
            //    // Response.Write("</td>");

            //    // Response.Write("<td>");
            //    Response.Write("<td><a href='#'>Update</a></td>");
            //    // Response.Write("</td>");

            //    Response.Write("</tr>");

            //}
            //Response.Write("</table>");
            //Response.Write("</center>");
            //Response.Write("</body>");
            //Response.Write("</html>");


        }
        protected void Logout(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Session.RemoveAll();
            System.Web.Security.FormsAuthentication.SignOut();
            Response.Redirect("Home.aspx", false);
        }
        protected void button_click(object sender, EventArgs e)
        {
            bool val = true;
        }
        protected void verify(object sender, EventArgs e)
{
            clsRegistration obj1 = new clsRegistration();
            int flag = 1;
            // Important Details
            obj1.Prefix = ddlPrefix.Value;
            obj1.FirstName = first_name.Value;
            obj1.MiddleName = mid_name.Value;
            obj1.LastName = last_name.Value;
            obj1.Pannumber = pan_num.Value;
            obj1.AadharNumber = aadhar_num.Value;
            obj1.PassportNumber = pass_num.Value;
            obj1.Occupation = occ_dd.Value;
            obj1.mobilenumber = mob_num.Value;
            obj1.emailid = email_id.Value;
            obj1.FlatNo = flatno.Value;
            obj1.City = city_name.Value;
            obj1.State = stat.Value;
            obj1.Pincode = pin_code.Value;
            obj1.Country = count.Value;
            //string flat = obj1.FlatNo;
            //string city = obj1.City;
            //string Address = String.Concat( flat, city);
        
            
            if ((first_name.Value == "") || (last_name.Value == "") || (pan_num.Value == "") || (aadhar_num.Value == "") || (occ_dd.Value == "") || (sof.Value == "") || (gross_inc.Value == "") || (res_type.Value == "") || (stat.Value == "") || (city_name.Value == "") || (flatno.Value == "") || (mob_num.Value == "") || (email_id.Value == ""))
            {
                flag = 0;
            }
            if (obj1.Pannumber.Length == 10 && obj1.AadharNumber.Length == 12 && obj1.mobilenumber.Length == 10)
            {
                //Response.Write("<span>");
                //Response.Write(" <script>alert(" + '"' + " Please check the PAN Number" + '"' + "); </script>");
                //Response.Write("</span>");
                flag = 1;
            }
            else
            {
                if (obj1.Pannumber.Length != 10)
                {
                    Response.Write("<span>");
                    Response.Write(" <script>alert(" + '"' + " Please check the PAN Number" + '"' + "); </script>");
                    Response.Write("</span>");
                    flag = 0;
                }
                if (obj1.AadharNumber.Length != 12)
                {
                    Response.Write("<span>");
                    Response.Write(" <script>alert(" + '"' + " Please check the Aadhar Number" + '"' + "); </script>");
                    Response.Write("</span>");
                    flag = 0;
                }
                if ((obj1.mobilenumber.Length != 10))
                {
                    Response.Write("<span>");
                    Response.Write(" <script>alert(" + '"' + " Please check the mobile number" + '"' + "); </script>");
                    Response.Write("</span>");
                    flag = 0;
                }
            }
            if (flag == 1)
            {
                //string conn = "";
                //conn = ConfigurationManager.ConnectionStrings["dbconnection"].ToString();
                //SqlConnection objsqlconn = new SqlConnection(conn);
                //objsqlconn.Open();
                try
                {
                    //SqlConnection con = new SqlConnection(@"Data Source=HDRBPRPA2; Initial Catalog=PrimeBankPOCdb; User ID=sa;Password=admin@123");
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ToString());
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into Applicant_Details(FirstName, MiddleName, LastName,PAN_Number,AADHAR_Number,PASSPORT_Number,Address,City,State,PIN,EMAIL,MobileNo) Values('" + obj1.FirstName + "', '" + obj1.MiddleName + "', '" + obj1.LastName + "','" + obj1.Pannumber + "','" + obj1.AadharNumber + "','" + obj1.PassportNumber + "','" + obj1.FlatNo + "','" + obj1.City + "','" + obj1.State + "','" + obj1.Pincode + "','" + obj1.emailid + "','" + obj1.mobilenumber + "')", con);
                    cmd.ExecuteNonQuery();
                    //con.Close();
                    //con.Open();
                    //Response.Write(" <script>alert(" + '"' + " Successfully Inserted" + '"' + "); </script>");
                    //Response.Redirect("DisplayInfo.aspx");
                    con.Close();
                }
                catch(Exception exe2)
                {
                    Response.Write(exe2);
                }
            }
            else
            {
                Response.Write(" <script>alert(" + '"' + " Please fill all the required details" + '"' + "); </script>");

                
            }
            

        }
       
            protected void Navigate(object sender, EventArgs e)
            {
                Response.Redirect("DisplayInfo.aspx");
            }
        
    }
}
//if (last_name.Value == "")
//{
//    Response.Write("<span>");
//    Response.Write(" <script>alert(" + '"' + "Last Name cannot be empty" + '"' + "); </script>");
//    Response.Write("</span>");

//}



//if (occ_dd.Value == "")
//{
//    Response.Write("<span>");
//    Response.Write(" <script>alert(" + '"' + "Occupation cannot be empty" + '"' + "); </script>");
//    Response.Write("</span>");

//}

//if (sof.Value == "")
//{
//    Response.Write("<span>");
//    Response.Write(" <script>alert(" + '"' + "Source Of Fund  cannot be empty" + '"' + "); </script>");
//    Response.Write("</span>");

//}

//if (gross_inc.Value == "")
//{
//    Response.Write("<span>");
//    Response.Write(" <script>alert(" + '"' + "gross income  cannot be empty" + '"' + "); </script>");
//    Response.Write("</span>");

//}

//if (res_type.Value == "")
//{
//    Response.Write("<span>");
//    Response.Write(" <script>alert(" + '"' + "Residence Type  cannot be empty" + '"' + "); </script>");
//    Response.Write("</span>");

//}

//if (stat.Value == "")
//{
//    Response.Write("<span>");
//    Response.Write(" <script>alert(" + '"' + "State   cannot be empty" + '"' + "); </script>");
//    Response.Write("</span>");

//}

//if (city_name.Value == "")
//{
//    Response.Write("<span>");
//    Response.Write(" <script>alert(" + '"' + "city   cannot be empty" + '"' + "); </script>");
//    Response.Write("</span>");

//}
//if (flatno.Value == "")
//{
//    Response.Write("<span>");
//    Response.Write(" <script>alert(" + '"' + "Building/ Flat No    cannot be empty" + '"' + "); </script>");
//    Response.Write("</span>");

//}

//}
//if (email_id.Value == "")
//{
//    Response.Write("<span>");
//    Response.Write(" <script>alert(" + '"' + "EmailId  cannot be empty" + '"' + "); </script>");
//    Response.Write("</span>");

//}



//string separator = ",";
//string FilePath = (HttpContext.Current.Request.PhysicalApplicationPath) + "csv\\details.csv";
//StringBuilder sb = new StringBuilder();
//sb.AppendLine(string.Join(separator, obj1.Prefix, obj1.FirstName, obj1.MiddleName, obj1.LastName, obj1.Pannumber, obj1.AadharNumber, obj1.PassportNumber, obj1.Occupation, obj1.mobilenumber, obj1.emailid));
//File.AppendAllText(FilePath, sb.ToString());
////Response.Redirect("Submits.aspx");
////Additional Details
//obj1.SourceofFunds = sof.Value;
//obj1.GrossAnnualIncome = gross_inc.Value;
//obj1.Residencetype = res_type.Value;
//obj1.FlatNo = flatno.Value;
//obj1.Streetnumber = street_no.Value;
//obj1.Landmark = land.Value;
//obj1.State = stat.Value;
//obj1.City = city_name.Value;
//obj1.Pincode = pin_code.Value;
//obj1.Country = count.Value;
//string separator1 = ",";

//string FilePath1 = (HttpContext.Current.Request.PhysicalApplicationPath) + "csv\\additionaldetails.csv";
//StringBuilder sb1 = new StringBuilder();
//sb1.AppendLine(string.Join(separator1, obj1.SourceofFunds, obj1.GrossAnnualIncome, obj1.Residencetype, obj1.FlatNo, obj1.Streetnumber, obj1.Landmark, obj1.State, obj1.City, obj1.Pincode, obj1.Country));
//File.AppendAllText(FilePath1, sb1.ToString());


//else
//{
//    Response.Write("<span>");
//    Response.Write(" <script>alert(" + '"' + "Mandatory Fields cannot be empty" + '"' + "); </script>");
//    Response.Write("</span>");
//}


//        try
//        {
//            string conn = "";
//            int flag = 0;
//            List<string> pan_numbers = new List<string>();
//            conn = ConfigurationManager.ConnectionStrings["dbconnection"].ToString();

//            SqlConnection objsqlconn = new SqlConnection(conn);


//            ///
//            ///For insertion
//            ///
//            //SqlCommand objcmd = new SqlCommand("Insert into Applicant_Details(FirstName, MiddleName, LastName,PAN_Number,AADHAR_Number,PASSPORT_Number) Values('" + obj1.FirstName + "', '" + obj1.MiddleName + "', '" + obj1.LastName + "','" + obj1.Pannumber + "','" + obj1.AadharNumber + "','" + obj1.PassportNumber + "')", objsqlconn);

//            //objcmd.ExecuteNonQuery();
//            string sql = "select PAN_Number from Applicant_Details";
//            SqlCommand objcmd1 = new SqlCommand(sql, objsqlconn);
//            objsqlconn.Open();
//            SqlDataReader rdr = objcmd1.ExecuteReader();
//            while (rdr.Read())
//            {
//                pan_numbers.Add(rdr["PAN_Number"].ToString());
//            }

//            foreach (string pan in pan_numbers)
//            {
//                if (obj1.Pannumber == pan)
//                {
//                    Response.Write("<span>");
//                    Response.Write("<script> alert(" + '"' + "city   cannot be empty" + '"' + "); </script>");
//                    Response.Write("</span>");
//                    flag = 0;
//                    break;
//                }
//                else
//                {
//                    flag = 1;
//                }
//            }
//            if (flag == 1)
//            {
//                SqlCommand objcmd = new SqlCommand("Insert into Applicant_Details(FirstName, MiddleName, LastName,PAN_Number,AADHAR_Number,PASSPORT_Number) Values('" + obj1.FirstName + "', '" + obj1.MiddleName + "', '" + obj1.LastName + "','" + obj1.Pannumber + "','" + obj1.AadharNumber + "','" + obj1.PassportNumber + "')", objsqlconn);

//                objcmd.ExecuteNonQuery();
//            }



//        }
//        catch (Exception exp)
//        {
//            Response.Write("Error");
//        }




//    }
//}


