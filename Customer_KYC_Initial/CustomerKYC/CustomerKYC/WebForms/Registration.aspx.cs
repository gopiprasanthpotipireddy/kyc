using CustomerKYC.DalClasses;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomerKYC.WebForms
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void verify(object sender, EventArgs e)
        {
            clsRegistration obj1 = new clsRegistration();
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

            if ((first_name.Value == "") || (last_name.Value == "") || (pan_num.Value == "") || (aadhar_num.Value == "") || (occ_dd.Value == "") || (sof.Value == "") || (gross_inc.Value == "") || (res_type.Value == "") || (stat.Value == "") || (city_name.Value == "") || (flatno.Value == "") || (mob_num.Value == "") || (email_id.Value == ""))
            {
                Response.Write("<span>");
                Response.Write(" <script>alert(" + '"' + "Mandatory Fields cannot be empty" + '"' + "); </script>");
                Response.Write("</span>");

            }

            //if (last_name.Value == "")
            //{
            //    Response.Write("<span>");
            //    Response.Write(" <script>alert(" + '"' + "Last Name cannot be empty" + '"' + "); </script>");
            //    Response.Write("</span>");

            //}

            if (obj1.Pannumber.Length != 10)
            {
                Response.Write("<span>");
                Response.Write(" <script>alert(" + '"' + " Please check the PAN Number" + '"' + "); </script>");
                Response.Write("</span>");

            }

            if (obj1.AadharNumber.Length != 12)
            {
                Response.Write("<span>");
                Response.Write(" <script>alert(" + '"' + " Please check the Aadhar Number" + '"' + "); </script>");
                Response.Write("</span>");

            }

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
            if ((obj1.mobilenumber.Length != 10))
            {
                Response.Write("<span>");
                Response.Write(" <script>alert(" + '"' + " Please check the mobile number" + '"' + "); </script>");
                Response.Write("</span>");
            }

            //}
            //if (email_id.Value == "")
            //{
            //    Response.Write("<span>");
            //    Response.Write(" <script>alert(" + '"' + "EmailId  cannot be empty" + '"' + "); </script>");
            //    Response.Write("</span>");

            //}
            string separator = ",";
            string FilePath = (HttpContext.Current.Request.PhysicalApplicationPath) + "data\\details.csv";
            StringBuilder sb = new StringBuilder();
            sb.AppendLine(string.Join(separator, obj1.Prefix, obj1.FirstName, obj1.MiddleName, obj1.LastName, obj1.Pannumber, obj1.AadharNumber, obj1.PassportNumber, obj1.Occupation, obj1.mobilenumber, obj1.emailid));
            File.AppendAllText(FilePath, sb.ToString());
            Response.Redirect("Submits.aspx");
            //Additional Details
            obj1.SourceofFunds = sof.Value;
            obj1.GrossAnnualIncome = gross_inc.Value;
            obj1.Residencetype = res_type.Value;
            obj1.FlatNo = flatno.Value;
            obj1.Streetnumber = street_no.Value;
            obj1.Landmark = land.Value;
            obj1.State = stat.Value;
            obj1.City = city_name.Value;
            obj1.Pincode = pin_code.Value;
            obj1.Country = count.Value;
            string separator1 = ",";

            string FilePath1 = (HttpContext.Current.Request.PhysicalApplicationPath) + "data\\additionaldetails.csv";
            StringBuilder sb1 = new StringBuilder();
            sb1.AppendLine(string.Join(separator1, obj1.SourceofFunds, obj1.GrossAnnualIncome, obj1.Residencetype, obj1.FlatNo, obj1.Streetnumber, obj1.Landmark, obj1.State, obj1.City, obj1.Pincode, obj1.Country));
            File.AppendAllText(FilePath1, sb1.ToString());


        }
    }
}
