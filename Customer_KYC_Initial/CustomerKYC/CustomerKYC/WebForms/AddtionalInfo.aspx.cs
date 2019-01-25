using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomerKYC.WebForms
{
    public partial class AdditionalInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void View_OnClick1(object sender, EventArgs e)
        {

            string FilePath = (HttpContext.Current.Request.PhysicalApplicationPath) + "data\\additionaldetails.csv";
            var reader = new StreamReader(File.OpenRead(FilePath));
            Response.Write("<html>");
            Response.Write(" <p><h4>Additional Information</h4><p>");

            Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color :black; font-size: 40px;'>");

            Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color : black; font-size: 40px;'>");

            Response.Write("<center>");
            Response.Write("<table border = 1 style = 'border-width: 20px; width: 100%; height: 100px;' >");
            Response.Write("<tr>");
            Response.Write("<th  style = 'text-align: center;'>Source of Funds</th>");
            Response.Write("<th  style = 'text-align: center;'>Gross Annual Income</th>");
            Response.Write("<th  style = 'text-align: center;'>Residence Type</th>");
            Response.Write("<th  style = 'text-align: center;'>Flat No./Building Name </th>");
            Response.Write("<th  style = 'text-align: center;'>Street Number </th>");
            Response.Write("<th  style = 'text-align: center;'>Landmark </th>");
            Response.Write("<th  style = 'text-align: center;'>State  </th>");
            Response.Write("<th  style = 'text-align: center;'>City</th>");
            Response.Write("<th  style = 'text-align: center;'>PIN Code </th>");
            Response.Write("<th  style = 'text-align: center;'>Country   </th>");
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
                //Response.Write("<td>");
                //// Response.Write(" <input type = 'Button' ID='Button1' value='Save' style = 'height:30px; width : 60px;' /> ");
                //Response.Write("<a href='#'>Save</a>");
                //Response.Write("</td>");

                Response.Write("<td><a href='#'>Save</a></td>");
                Response.Write("<td><a href='#'>Update</a></td>");

                //Response.Write("<td>");
                //// Response.Write(" <input type = 'Button' ID='Button1' value='Save' style = 'height:30px; width : 60px;' /> ");
                //Response.Write("<a href='#'>Update</a>");
                //Response.Write("</td>");


                Response.Write("</tr>");

            }
            Response.Write("</table>");
            Response.Write("</center>");
            Response.Write("</body>");
            Response.Write("</html>");
        }
    }
}