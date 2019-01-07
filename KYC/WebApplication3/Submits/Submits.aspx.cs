using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Newtonsoft.Json;
using System.Text;

namespace WebApplication3
{
    public partial class Submits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void View_OnClick(object sender, EventArgs e)
        {
            try
            {
                var reader = new StreamReader(File.OpenRead(@"C:\Users\keerthik\Desktop\Maker.csv"));


                Response.Write("<html>");
                Response.Write("<body style =' POSITION: absolute; color : white; font-size: 40px;'>");
                Response.Write("<center>");
                Response.Write("<table border = 1 style = 'border-width: 20px; width: 100%; height: 100px;' >");
                Response.Write("<tr>");
                Response.Write("<th  style = 'text-align: center;'>ClientID</th>");
                Response.Write("<th  style = 'text-align: center;'>ClientName</th>");
                Response.Write("<th  style = 'text-align: center;'>Written internal places and procedures</th>");
                Response.Write("<th  style = 'text-align: center;'>A Risk Assessment</th>");
                Response.Write("<th  style = 'text-align: center;'>Designation of compliance officer</th>");
                Response.Write("<th  style = 'text-align: center;'>Periodic independency testing of AML Program</th>");
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

                    Response.Write("</tr>");

                }
                Response.Write("</table>");
                Response.Write("</center>");
                Response.Write("</body>");
                Response.Write("</html>");
            }
            catch (Exception e)
            {
                Response.Write(e.InnerException);
            }
        }
       
}
}