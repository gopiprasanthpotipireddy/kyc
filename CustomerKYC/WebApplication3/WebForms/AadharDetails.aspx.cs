using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication3.DalClasses;

namespace WebApplication3.WebForms
{
    public partial class AadharDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Verify(object sender, EventArgs e)
        {
            //Aadhar obj = new Aadhar();
            int flag;
            //AdharDetails AD1 = new AdharDetails();
            string Aadhar = AdharDetails.an;
            int i = 0;
            string[] result = new string[7];
            var AadharNumbercol = new List<string>();
            var Namecol = new List<string>();
            var Addresscol = new List<string>();
            var Agecol = new List<string>();
            var DateOfBirthcol = new List<string>();
            var Mobilecol = new List<string>();
            var emailcol = new List<string>();
            string FilePath = (HttpContext.Current.Request.PhysicalApplicationPath) + "csv\\Aadhar_Details.csv";
            var reader = new StreamReader(File.OpenRead(FilePath));
            //string Aadhar = AadharNumber.Value;
            if (Aadhar == null)
            {
                Response.Write("<span>");
                Response.Write(" <script>alert(" + '"' + "Please enter the Aadhar Number" + '"' + "); </script>");
                Response.Write("</span>");
            }
            else if (Aadhar.Length != 12)
            {
                Response.Write("<span>");
                Response.Write(" <script>alert(" + '"' + "Aadhar Number length must be 12" + '"' + "); </script>");
                Response.Write("</span>");
            }
            else
            {
                while (!reader.EndOfStream)
                {
                    var line = reader.ReadLine();
                    var values = line.Split(',');


                    AadharNumbercol.Add(values[0]);
                    Namecol.Add(values[1]);
                    Agecol.Add(values[2]);
                    DateOfBirthcol.Add(values[3]);
                    Addresscol.Add(values[4]);
                    Mobilecol.Add(values[5]);
                    emailcol.Add(values[6]);
                }
                foreach (string aadhar in AadharNumbercol)
                {
                    if (Aadhar == aadhar)
                    {
                        flag = 1;
                        break;
                    }
                    else
                    {
                        flag = 0;
                        i++;
                    }

                }
                string aadharnumber = AadharNumbercol[i];
                result[0] = aadharnumber;
                string name = Namecol[i];
                result[1] = name;
                string age = Agecol[i];
                result[2] = age;
                string DOB = DateOfBirthcol[i];
                result[3] = DOB;
                string address = Addresscol[i];
                result[4] = address;
                string mobile = Mobilecol[i];
                result[5] = mobile;
                string email = emailcol[i];
                result[6] = email;
                Response.Write("<html>");
                Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 200px; POSITION: absolute; TOP: 150px ; color :black; font-size: 40px;'>");
                Response.Write("<center>");
                Response.Write("<h1 style='font-size:x-large; color:#0f3f6a;'>");
                Response.Write("Details of the Customer");
                Response.Write("</h1>");
                Response.Write("<table border = 1 style = 'border-width: 20px; width: 100%; height: 100px;border-color:#0f3f6a;' >");
                Response.Write("<th  style = 'text-align: center;font-size:large;'>Aadhar Number</th>");
                Response.Write("<td>");
                Response.Write(string.Format("{0}", result[0]));
                Response.Write("</td>");
                Response.Write("<tr>");
                Response.Write("<th  style = 'text-align: center;font-size:large;'>Name</th>");
                Response.Write("<td>");
                Response.Write(string.Format("{0}", result[1]));
                Response.Write("</td>");
                Response.Write("</tr>");
                Response.Write("<br/>");
                Response.Write("<tr>");
                Response.Write("<th  style = 'text-align: center;font-size:large;'>Age</th>");
                Response.Write("<td>");
                Response.Write(string.Format("{0}", result[2]));
                Response.Write("</td>");
                Response.Write("</tr>");
                Response.Write("<tr>");
                Response.Write("<td>");
                Response.Write("</td>");
                Response.Write("<td>");
                Response.Write("</td>");
                Response.Write("</tr>");
                Response.Write("<tr>");
                Response.Write("<th  style = 'text-align: center;font-size:large;'>Date Of Birth</th>");
                Response.Write("<td>");
                Response.Write(string.Format("{0}", result[3]));
                Response.Write("</td>");
                Response.Write("</tr>");
                Response.Write("<tr>");
                Response.Write("<td>");
                Response.Write("</td>");
                Response.Write("<td>");
                Response.Write("</td>");
                Response.Write("</tr>");
                Response.Write("<tr>");
                Response.Write("<th  style = 'text-align: center;font-size:large;'>Address</th>");
                Response.Write("<td>");
                Response.Write(string.Format("{0}", result[4]));
                Response.Write("</td>");
                Response.Write("</tr>");

                Response.Write("<tr>");
                Response.Write("<tr>");
                Response.Write("<td>");
                Response.Write("</td>");
                Response.Write("<td>");
                Response.Write("</td>");
                Response.Write("</tr>");
                Response.Write("<th  style = 'text-align: center; font-size:large;'>Mobile</th>");
                Response.Write("<td>");
                Response.Write(string.Format("{0}", result[5]));
                Response.Write("</td>");
                Response.Write("</tr>");
                Response.Write("<tr>");
                Response.Write("<td>");
                Response.Write("</td>");
                Response.Write("<td>");
                Response.Write("</td>");
                Response.Write("</tr>");
                Response.Write("<tr>");
                Response.Write("<th  style = 'text-align: center;font-size:large;'>E-mail</th>");
                Response.Write("<td>");
                Response.Write(string.Format("{0}", result[6]));
                Response.Write("</td>");
                Response.Write("</tr>");
                //for (int j = 0; j < result.Length; j++)
                //{
                //    Response.Write("<td>");
                //    Response.Write(string.Format("{0}", result[j]));
                //    Response.Write("</td>");
            }

            //    for (i = 0; i < values.Length; i++)
            //    {
            //        if (Aadhar == values[i])
            //        {
            //            flag = 1;
            //            break;
            //            //Response.Write("Aadhar is verified");

            //        }
            //        else
            //        {
            //            flag = 0;
            //            //Response.Write("Aadhar is not verified");
            //        }
            //      }
            //    if(flag == 1)
            //    {
            //        break;
            //    }
            //   }
            //if (flag == 1)
            //{
            //    Response.Write("Aadhar is verified");

            //}
            //else if (flag == 0)
            //{
            //    Response.Write("Aadhar is not verified");

            //}


        }
    }
}