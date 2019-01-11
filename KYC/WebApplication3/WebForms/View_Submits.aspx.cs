using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Newtonsoft.Json;
using System.Text;

namespace KYC
{
    public partial class View_Submits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void View_OnClick(object sender, EventArgs e)
        {
            string FilePath = (HttpContext.Current.Request.PhysicalApplicationPath) + "data\\Associated_retriever.csv";
            //@"C:\Users\keerthik\Desktop\AssociatedRetriever.csv";
            //(HttpContext.Current.Request.PhysicalApplicationPath) + "data\\Associated_Retriever.csv";
            var reader = new StreamReader(File.OpenRead(FilePath));
            Response.Write("<html>");
            Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color :black; font-size: 40px;'>");
            Response.Write("<center>");
            Response.Write("<table border=1 style = 'border-width: 20px; width: 100%; height: 100px;' >");
            //Response.Write("<h3>Basic Details<h3>");
            Response.Write("<th  style = 'text-align: center;'>Entity Name</th>");
            Response.Write("<th  style = 'text-align: center;'>Trade Name</th>");
            Response.Write("<th  style = 'text-align: center;'>First Name</th>");
            //Response.Write("<th  style = 'text-align: center;'>Middle name</th>");
            Response.Write("<th  style = 'text-align: center;'>Last name</th>");
            Response.Write("<th  style = 'text-align: center;'>Family Name</th>");
            //Response.Write("<th  style = 'text-align: center;'>Title</th>");
            //Response.Write("<th  style = 'text-align: center;'>Suffix</th>");
            Response.Write("<th  style = 'text-align: center;'>CFI ID</th>");
            Response.Write("<th  style = 'text-align: center;'>UEN Number</th>");
            //Response.Write("<th  style = 'text-align: center;'>Customer Classification</th>");
            //Response.Write("For Individuals Only");
            Response.Write("<th  style = 'text-align: center;'>Occupation</th>");
            //Response.Write("<th  style = 'text-align: center;'>Nationality</th>");
            //Response.Write("<th  style = 'text-align: center;'>Citizen Ship</th>");
            //Response.Write("For Entities Only");
            Response.Write("<th  style = 'text-align: center;'>Is the Entity a Financial Institution</th>");
            Response.Write("<th  style = 'text-align: center;'>Primary Regulator</th>");
            //Response.Write("<th  style = 'text-align: center;'>Regulator Country</th>");
            //Response.Write("<th  style = 'text-align: center;'>legal Entity Type</th>");
            Response.Write("<th  style = 'text-align: center;'>Nature Of Business</th>");
            Response.Write("<th  style = 'text-align: center;'>State/Province of Incorporation Number</th>");
            Response.Write("<th  style = 'text-align: center;'>Incorporation/Registration Number</th>");
            Response.Write("Watch List Management");
            Response.Write("<th  style = 'text-align: center;'>PEP Justification</th>");

            Response.Write("<th  style = 'text-align: center;'>Sanction Justification</th>");

            ///
            ///Code for ClientStatic Data
            ///
            //Response.Write("<html>");

            //Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color :black; font-size: 40px;'>");

            //Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color : black; font-size: 40px;'>");

            //Response.Write("<center>");
            //Response.Write("<table border = 1 style = 'border-width: 20px; width: 100%; height: 100px;' >");
            //Response.Write("<tr>");
            //Response.Write("<th  style = 'text-align: center;'>ClientID</th>");
            //Response.Write("<th  style = 'text-align: center;'>ClientName</th>");
            //Response.Write("<th  style = 'text-align: center;'>Written internal places and procedures</th>");
            //Response.Write("<th  style = 'text-align: center;'>A Risk Assessment</th>");
            //Response.Write("<th  style = 'text-align: center;'>Designation of compliance officer</th>");
            //Response.Write("<th  style = 'text-align: center;'>Periodic independency testing of AML Program</th>");
            //Response.Write("</tr>");
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
        //protected void View_Associated(object sender, EventArgs e)
        //{
        //    string FilePath = (HttpContext.Current.Request.PhysicalApplicationPath) + "data\\Associated_retriever.csv";
        //    //@"C:\Users\keerthik\Desktop\AssociatedRetriever.csv";
        //    //(HttpContext.Current.Request.PhysicalApplicationPath) + "data\\Associated_Retriever.csv";
        //    var reader = new StreamReader(File.OpenRead(FilePath));
        //    Response.Write("<html>");
        //    Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color :black; font-size: 40px;'>");
        //    Response.Write("<center>");
        //    Response.Write("<table border=1 style = 'border-width: 20px; width: 100%; height: 100px;' >");
        //    //Response.Write("<h3>Basic Details<h3>");
        //    Response.Write("<th  style = 'text-align: center;'>Entity Name</th>");
        //    Response.Write("<th  style = 'text-align: center;'>Trade Name</th>");
        //    Response.Write("<th  style = 'text-align: center;'>First Name</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Middle name</th>");
        //    Response.Write("<th  style = 'text-align: center;'>Last name</th>");
        //    Response.Write("<th  style = 'text-align: center;'>Family Name</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Title</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Suffix</th>");
        //    Response.Write("<th  style = 'text-align: center;'>CFI ID</th>");
        //    Response.Write("<th  style = 'text-align: center;'>UEN Number</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Customer Classification</th>");
        //    //Response.Write("For Individuals Only");
        //    Response.Write("<th  style = 'text-align: center;'>Occupation</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Nationality</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Citizen Ship</th>");
        //    //Response.Write("For Entities Only");
        //    Response.Write("<th  style = 'text-align: center;'>Is the Entity a Financial Institution</th>");
        //    Response.Write("<th  style = 'text-align: center;'>Primary Regulator</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Regulator Country</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>legal Entity Type</th>");
        //    Response.Write("<th  style = 'text-align: center;'>Nature Of Business</th>");
        //    Response.Write("<th  style = 'text-align: center;'>State/Province of Incorporation Number</th>");
        //    Response.Write("<th  style = 'text-align: center;'>Incorporation/Registration Number</th>");
        //    Response.Write("Watch List Management");
        //    Response.Write("<th  style = 'text-align: center;'>PEP Justification</th>");

        //    Response.Write("<th  style = 'text-align: center;'>Sanction Justification</th>");

            ///
            ///Code for ClientStatic Data
            ///
            //Response.Write("<html>");

            //Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color :black; font-size: 40px;'>");

            //Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color : black; font-size: 40px;'>");

            //Response.Write("<center>");
            //Response.Write("<table border = 1 style = 'border-width: 20px; width: 100%; height: 100px;' >");
            //Response.Write("<tr>");
            //Response.Write("<th  style = 'text-align: center;'>ClientID</th>");
            //Response.Write("<th  style = 'text-align: center;'>ClientName</th>");
            //Response.Write("<th  style = 'text-align: center;'>Written internal places and procedures</th>");
            //Response.Write("<th  style = 'text-align: center;'>A Risk Assessment</th>");
            //Response.Write("<th  style = 'text-align: center;'>Designation of compliance officer</th>");
            //Response.Write("<th  style = 'text-align: center;'>Periodic independency testing of AML Program</th>");
            //Response.Write("</tr>");
        //    while (!reader.EndOfStream)
        //    {
        //        var line = reader.ReadLine();
        //        var values = line.Split(',');

        //        int i = 0;
        //        Response.Write("<tr>");

        //        for (i = 0; i < values.Length; i++)
        //        {


        //            Response.Write("<td style = 'text-align: center;'>");
        //            Response.Write(string.Format("{0}", values[i]));
        //            Response.Write("</td>");
        //            Response.Write("\n");


        //        }

        //        Response.Write("</tr>");

        //    }
        //    Response.Write("</table>");
        //    Response.Write("</center>");
        //    Response.Write("</body>");
        //    Response.Write("</html>");
        //}
        //protected void View_Ownership(object sender, EventArgs e)
        //{
        //    string FilePath = (HttpContext.Current.Request.PhysicalApplicationPath) + "data\\Associated_retriever.csv";
        //    //@"C:\Users\keerthik\Desktop\AssociatedRetriever.csv";
        //    //(HttpContext.Current.Request.PhysicalApplicationPath) + "data\\Associated_Retriever.csv";
        //    var reader = new StreamReader(File.OpenRead(FilePath));
        //    Response.Write("<html>");
        //    Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color :black; font-size: 40px;'>");
        //    Response.Write("<center>");
        //    Response.Write("<table border=1 style = 'border-width: 20px; width: 100%; height: 100px;' >");
        //    //Response.Write("<h3>Basic Details<h3>");
        //    Response.Write("<th  style = 'text-align: center;'>Entity Name</th>");
        //    Response.Write("<th  style = 'text-align: center;'>Trade Name</th>");
        //    Response.Write("<th  style = 'text-align: center;'>First Name</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Middle name</th>");
        //    Response.Write("<th  style = 'text-align: center;'>Last name</th>");
        //    Response.Write("<th  style = 'text-align: center;'>Family Name</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Title</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Suffix</th>");
        //    Response.Write("<th  style = 'text-align: center;'>CFI ID</th>");
        //    Response.Write("<th  style = 'text-align: center;'>UEN Number</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Customer Classification</th>");
        //    //Response.Write("For Individuals Only");
        //    Response.Write("<th  style = 'text-align: center;'>Occupation</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Nationality</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Citizen Ship</th>");
        //    //Response.Write("For Entities Only");
        //    Response.Write("<th  style = 'text-align: center;'>Is the Entity a Financial Institution</th>");
        //    Response.Write("<th  style = 'text-align: center;'>Primary Regulator</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Regulator Country</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>legal Entity Type</th>");
        //    Response.Write("<th  style = 'text-align: center;'>Nature Of Business</th>");
        //    Response.Write("<th  style = 'text-align: center;'>State/Province of Incorporation Number</th>");
        //    Response.Write("<th  style = 'text-align: center;'>Incorporation/Registration Number</th>");
        //    Response.Write("Watch List Management");
        //    Response.Write("<th  style = 'text-align: center;'>PEP Justification</th>");

        //    Response.Write("<th  style = 'text-align: center;'>Sanction Justification</th>");

        //    ///
        //    ///Code for ClientStatic Data
        //    ///
        //    //Response.Write("<html>");

        //    //Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color :black; font-size: 40px;'>");

        //    //Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 290px ; color : black; font-size: 40px;'>");

        //    //Response.Write("<center>");
        //    //Response.Write("<table border = 1 style = 'border-width: 20px; width: 100%; height: 100px;' >");
        //    //Response.Write("<tr>");
        //    //Response.Write("<th  style = 'text-align: center;'>ClientID</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>ClientName</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Written internal places and procedures</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>A Risk Assessment</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Designation of compliance officer</th>");
        //    //Response.Write("<th  style = 'text-align: center;'>Periodic independency testing of AML Program</th>");
        //    //Response.Write("</tr>");
        //    while (!reader.EndOfStream)
        //    {
        //        var line = reader.ReadLine();
        //        var values = line.Split(',');

        //        int i = 0;
        //        Response.Write("<tr>");

        //        for (i = 0; i < values.Length; i++)
        //        {


        //            Response.Write("<td style = 'text-align: center;'>");
        //            Response.Write(string.Format("{0}", values[i]));
        //            Response.Write("</td>");
        //            Response.Write("\n");


        //        }

        //        Response.Write("</tr>");

        //    }
        //    Response.Write("</table>");
        //    Response.Write("</center>");
        //    Response.Write("</body>");
        //    Response.Write("</html>");
        //}
    }
}