using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication3.DalClasses;

namespace WebApplication3.WebForms
{
    public partial class AadharVerification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void verify(object sender, EventArgs e)
        {

            AdharDetails.AadharNumber(AadharNumber.Value);
            Response.Redirect("Aadhariframe.aspx");

            //    Aadhar obj = new Aadhar();
            //    AdharDetails obj1 = new AdharDetails();
            //    int flag;
            //    int i = 0;
            //    string[] result = new string[3];
            //    var column1 = new List<string>();
            //    var column2 = new List<string>();
            //    var column3 = new List<string>();
            //    string FilePath = (HttpContext.Current.Request.PhysicalApplicationPath) + "data\\Aadhar_Details.csv";
            //    var reader = new StreamReader(File.OpenRead(FilePath));
            //    string Aadhar = AadharNumber.Value;
            //    if (Aadhar == null)
            //    {
            //        Response.Write("<span>");
            //        Response.Write(" <script>alert(" + '"' + "Please enter the Aadhar Number" + '"' + "); </script>");
            //        Response.Write("</span>");
            //    }
            //    else if (Aadhar.Length != 12)
            //    {
            //        Response.Write("<span>");
            //        Response.Write(" <script>alert(" + '"' + "Aadhar Number length must be 12" + '"' + "); </script>");
            //        Response.Write("</span>");
            //    }
            //    else
            //    {
            //        while (!reader.EndOfStream)
            //        {
            //            var line = reader.ReadLine();
            //            var values = line.Split(',');


            //            column1.Add(values[0]);
            //            column2.Add(values[1]);
            //            column3.Add(values[2]);
            //        }
            //        foreach (string aadhar in column1)
            //        {
            //            if (Aadhar == aadhar)
            //            {
            //                flag = 1;
            //                break;
            //            }
            //            else
            //            {
            //                flag = 0;
            //                i++;
            //            }

            //        }
            //        string aadharnumber = column1[i];
            //        result[0] = aadharnumber;
            //        string name = column2[i];
            //        result[1] = name;
            //        string address = column3[i];
            //        result[2] = address;
            //        for (int j = 0; j < result.Length; j++)
            //        {
            //            Response.Write(string.Format("{0}", result[j]));
            //        }

            //        for (i = 0; i < values.Length; i++)
            //        {
            //            if (Aadhar == values[i])
            //            {
            //                flag = 1;
            //                break;
            //                //Response.Write("Aadhar is verified");

            //            }
            //            else
            //            {
            //                flag = 0;
            //                //Response.Write("Aadhar is not verified");
            //            }
            //        }
            //        if (flag == 1)
            //        {
            //            break;
            //        }
            //    }
            //    if (flag == 1)
            //    {
            //        Response.Write("Aadhar is verified");

            //    }
            //    else if (flag == 0)
            //    {
            //        Response.Write("Aadhar is not verified");

            //    }


            //}

        }
    }
}