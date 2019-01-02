using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Newtonsoft.Json;
using System.Text;

using Twilio;
using Twilio.Rest.Api.V2010.Account;

namespace WebApplication3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void submit_OnClick(object sender, EventArgs e)
        {
            //testc.clientname = textbox1.Value;
            //string test = new HtmlDocument(Microsoft.VisualStudio.TestTools.UITesting.UITestControl).GetElementById("txtbox1");
            //var test2=new HtmlDocument.GetElementById("txtbox2");

            clsModel obj = new clsModel();
            obj.ClientName = txtbox1.Value;
            obj.ClientID = int.Parse(Text2.Value);
            obj.Procedure = rd1.Value;
            obj.Risk = rd3.Value;
            obj.Designation = rd5.Value;
            obj.testing = rd7.Value;
            //List<clsModel> exam = new List<clsModel>();
            //exam.Add(obj);

            string separator = ",";
            string FilePath = @"C:\Users\keerthik\Desktop\Maker.csv";
            StringBuilder sb = new StringBuilder();
            sb.AppendLine(string.Join(separator, obj.ClientID, obj.ClientName, obj.Procedure, obj.Risk, obj.Designation, obj.testing));
            //sb.AppendLine(string.Join(separator, obj.ClientName));
            //sb.AppendLine(string.Join(separator, obj.Procedure));
            //sb.AppendLine(string.Join(separator, obj.Risk));
            //sb.AppendLine(string.Join(separator, obj.Designation));
            //sb.AppendLine(string.Join(separator, obj.testing));
            File.AppendAllText(FilePath, sb.ToString());

            clsJSONTest obj1 = new clsJSONTest();


            //StringReader sr = new StringReader(FilePath);
            //string line;
            //while ((line = sr.ReadLine()) != null)
            //{
                
            //    Console.WriteLine(line);
            //}

            obj1.fun(obj);


            //AddintoJSON(test);
        }
        //protected void sub1_click(object sender, EventArgs e) {

        //    //testc.clientname = textbox1.Value;

        //    clsModel obj = new clsModel();
        //    obj.ClientName = textbox1.Value;
        //    obj.ClientID = int.Parse(textbox2.Value);
        //    obj.Procedure = rd1.Value;


        //    clsJSONTest obj1 = new clsJSONTest();
        //    obj1.fun(obj);

        //    //AddintoJSON(test);
        //}

        protected void View_OnClick(object sender, EventArgs e)
        {
            var reader = new StreamReader(File.OpenRead(@"C:\Users\keerthik\Desktop\Maker.csv"));
        

            while (!reader.EndOfStream)
            {
                var line = reader.ReadLine();
                var values = line.Split(',');

               
                int i = 0;
                    for (i = 0; i < values.Length; i++)
                    {
                        Response.Write(string.Format("{0};",  values[i]));
                    Response.Write("\n");

                }
                   

                
            }



            //string FilePath = @"C:\Users\keerthik\Desktop\Maker.csv";
            //StreamReader sr = new StreamReader(FilePath);
            //String line;
            //while ((line = sr.ReadLine()) != null)
            //{
            //    if (line.Contains(","))
            //    {
            //        String[] split = line.Split(',');

            //        //if (split[1].Contains(txtID.text))
            //        //{
            //        //    split[2] = txtBatch.text;
            //        //    split[3] = txtLoc.text;
            //        //}
            //    }

            //    lines.Add(line);
            //  }
            //using (TextReader tr = File.OpenText(FilePath))
            //{
            //    Console.WriteLine(tr.ReadToEnd());
            //}
            //Console.ReadKey();
        }

        //public void Program_Click(object sender, EventArgs e)
        //{
        //    // Find your Account Sid and Token at twilio.com/console
        //    const string accountSid = "ACaab6300cb3d90da30f0420ba4ea6fd64";
        //    const string authToken = "40c33c9d39c2f3804592756939964926";

        //    TwilioClient.Init(accountSid, authToken);

        //    var message = MessageResource.Create(
        //    body: "Your KYC request has been submitted for verification...",
        //    from: new Twilio.Types.PhoneNumber("+17248254318"),
        //    to: new Twilio.Types.PhoneNumber("+91 8220340598")
        //    );

        //    Console.WriteLine(message.Sid);
        //}

    }
}
