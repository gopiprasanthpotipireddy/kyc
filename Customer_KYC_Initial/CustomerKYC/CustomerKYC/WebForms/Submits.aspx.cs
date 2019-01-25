using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomerKYC.WebForms
{
    public partial class Submits : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_Init(object source, System.EventArgs e)
        {
            btnpopup.Attributes.Add("onclick", "return openPopup();");
        }


        protected void View_OnClick(object sender, EventArgs e)
        {

            string FilePath = (HttpContext.Current.Request.PhysicalApplicationPath) + "csv\\details.csv";
            var reader = new StreamReader(File.OpenRead(FilePath));
            Response.Write("<html>");
            Response.Write(" <p><h4>Details</h4><p>");

            Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color :black; font-size: 40px;'>");

            Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color : black; font-size: 40px;'>");

            Response.Write("<center>");
            Response.Write("<table border = 1 style = 'border-width: 20px; width: 100%; height: 100px;' >");
            Response.Write("<tr>");

            Response.Write("<th  style = 'text-align: center;'> Prefix</th>");
            Response.Write("<th  style = 'text-align: center;'>First Name</th>");
            Response.Write("<th  style = 'text-align: center;'>Middle Name</th>");
            Response.Write("<th  style = 'text-align: center;'>Last Name</th>");
            Response.Write("<th  style = 'text-align: center;'>Pan Number</th> ");
            Response.Write("<th  style = 'text-align: center;'>Aadhar Number</th>");
            Response.Write("<th  style = 'text-align: center;'>Passport Number</th>");
            Response.Write("<th  style = 'text-align: center;'>Occupation</th>");
            Response.Write("<th  style = 'text-align: center;'>Mobile Number  </th>");
            Response.Write("<th  style = 'text-align: center;'> Email Id   </th>");
            Response.Write("<th  style = 'text-align: center;'>Overall Status</th>");
            Response.Write("<th  style = 'text-align: center;'>ID Verification</th>");
            //Response.Write("<th><a href='ID Verification'>Id Verification</a></th>");
            Response.Write("<th  style = 'text-align: center;'>Address Verification</th>");
            Response.Write("<th  style = 'text-align: center;'>Sanction Screening</th>");
            Response.Write("<th  style = 'text-align: center;'>Credit Risk</th>");

            //Response.Write("<th  style = 'text-align: center;'>Source of Funds</th>");
            //Response.Write("<th  style = 'text-align: center;'>Gross Annual Income</th>");
            //Response.Write("<th  style = 'text-align: center;'>Residence Type</th>");
            //Response.Write("<th  style = 'text-align: center;'>Flat No./Building Name </th>");
            //Response.Write("<th  style = 'text-align: center;'>Street Number </th>");
            //Response.Write("<th  style = 'text-align: center;'>Landmark </th>");
            //Response.Write("<th  style = 'text-align: center;'>State  </th>");
            //Response.Write("<th  style = 'text-align: center;'>City</th>");
            //Response.Write("<th  style = 'text-align: center;'>PIN Code </th>");
            //Response.Write("<th  style = 'text-align: center;'>Country   </th>");


            Response.Write("</tr>");
            while (!reader.EndOfStream)
            {
                var line = reader.ReadLine();
                var values = line.Split(',');

                int i = 0;
                Response.Write("<tr>");

                for (i = 0; i < values.Length; i++)
                {
                    Response.Write("<td style = 'text-align: center;'>");
                    Response.Write(string.Format("{0}", values[i]));
                    Response.Write("</td>");
                    Response.Write("\n");
                }

                Response.Write("<td>");     // Overall Status
                Response.Write("Approved");
                Response.Write("</td>");

                Response.Write("<td>");   // Id Verification
                Response.Write("<a href='PanLogin.aspx'>Not Initiated</a>");
                Response.Write("</td>");

                Response.Write("<td>");  //Address Verification
                Response.Write("<a href='AadharLogin.aspx'>Yes</a>");
                Response.Write("</td>");

                Response.Write("<td>");  //Sanction Screening
                Response.Write("");
                Response.Write("</td>");

                Response.Write("<td>");  // Cibil Score
                Response.Write("");
                Response.Write("</td>");

                Response.Write("<td><input type='button' value='Additional Information' onclick= 'openPopup()' runat='server'/></td>");
                //Response.Write("<td><a href='AdditionalInfo.aspx'>Additional Information</a></td>");
                //Response.Write("<td>");              
                Response.Write("<td><a href='#'>Save</a></td>");
                // Response.Write("</td>");

                // Response.Write("<td>");
                Response.Write("<td><a href='#'>Update</a></td>");
                // Response.Write("</td>");

                Response.Write("</tr>");

            }
            Response.Write("</table>");
            Response.Write("</center>");
            Response.Write("</body>");
            Response.Write("</html>");
           reader.Close();
            reader.Dispose();
        }
    }
}
