using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;

namespace CustomerKYC.WebForms
{
    public partial class PanId : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void verification(object sender, EventArgs e)
        {
            CustomerKYC.DalClasses.PAN obj = new DalClasses.PAN();
            obj.pannumber = TextBox5.Text;

            int flag, i = 0;
            if (TextBox5.Text == "")

            {

                Response.Write("<span>");

                Response.Write(" <script>alert(" + '"' + "Please Enter the correct PAN Number" + '"' + "); </script>");

                Response.Write("</span>");

            }
            else
            {
                //string separator = ",";
                Details.PanDetails(TextBox5.Text);
                Response.Redirect("PanDetails.aspx");
                //    string FilePath = (HttpContext.Current.Request.PhysicalApplicationPath) + "csv\\PAN.csv";
                //    var reader = new StreamReader(File.OpenRead(FilePath));
                //    var PanCol = new List<string>();
                //    var PanFullCol = new List<string>();
                //    var PanDOBcol = new List<string>();
                //    var PanSigcol = new List<string>();
                //    string[] result = new string[4];
                //    while (!reader.EndOfStream)
                //    {
                //        var line = reader.ReadLine();
                //        var values = line.Split(',');


                //        PanCol.Add(values[0]);
                //        PanFullCol.Add(values[1]);
                //        PanDOBcol.Add(values[2]);
                //        PanSigcol.Add(values[3]);


                //    }
                //    foreach(string pannumber in PanCol)
                //    {
                //        if(TextBox5.Text == pannumber)
                //        {
                //            flag = 1;
                //            break;
                //        }
                //        else
                //        {
                //            flag = 0;
                //            i++;
                //        }
                //    }
                //    //for(int k = 0; k < result.Length; k++)
                //    //{
                //    //    result[i] = 
                //    //}
                //    string PANnumber =PanCol[i];
                //    string PanFulName = PanFullCol[i];
                //    string DOB = PanDOBcol[i];
                //    string Signature = PanSigcol[i];
                //    Response.Write("<html>");

                //    Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color :black; font-size: 40px;'>");

                //    Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color : black; font-size: 40px;'>");

                //    Response.Write("<center>");
                //    Response.Write("<table border = 1 style = 'border-width: 20px; width: 100%; height: 100px;' >");
                //    Response.Write("<tr>");

                //    Response.Write("<th  >PAN Number</th>");
                //    Response.Write("<td>");
                //    Response.Write(string.Format("{0}", PANnumber));
                //    Response.Write("</td>");
                //    Response.Write("</tr>");
                //    Response.Write("<tr>");
                //    Response.Write("<th >Customer Full Name</th>");
                //    Response.Write("<td>");
                //    Response.Write(string.Format("{0}", PanFulName));
                //    Response.Write("</td>");
                //    Response.Write("</tr>");
                //    Response.Write("<tr>");
                //    Response.Write("<th > Customer Date Of Birth</th>");
                //    Response.Write("<td>");
                //    Response.Write(string.Format("{0}", DOB));
                //    Response.Write("</td>");
                //    Response.Write("</tr>");
                //    Response.Write("<tr>");
                //    Response.Write("<th >Signature</th>");
                //    Response.Write("<td>");
                //    Response.Write(string.Format("{0}", Signature));
                //    Response.Write("</td>");
                //    Response.Write("</tr>");
                //    Response.Write("</table>");
                //    Response.Write("</center>");
                //    Response.Write("</body>");
                //    Response.Write("</html>");





                //}

            }







        }
    }
}
