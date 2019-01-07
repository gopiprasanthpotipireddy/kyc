using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.IO;

namespace KYC
{
    public partial class NewCase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["username_login"] == null)
            //    Response.Redirect("Login.aspx");
        }
        public void submit_OnClick(object sender, EventArgs e)
        {

            //testc.clientname = textbox1.Value;
            //string test = new HtmlDocument(Microsoft.VisualStudio.TestTools.UITesting.UITestControl).GetElementById("txtbox1");
            //var test2=new HtmlDocument.GetElementById("txtbox2");
            if (txtbox1.Value == "")
            {
                Response.Write("<span>");
                Response.Write("<center>ClientName field Can't be Empty</center>");
                Response.Write("</span>");
            }
            if (Text2.Value == "")
            {

                Response.Write("<center>ClientID Can't be Empt</center>");

            }
            if (!(rd1.Checked || rd2.Checked))
            {
                Response.Write("<center>Written Internal Places and Procedures  field Can't be Empty</center>");
            }
            if (!(rd3.Checked || rd4.Checked))
            {
                Response.Write("<center>Risk Assessment field Can't be Empty</center>");
            }
            if (!(rd5.Checked || rd6.Checked))
            {
                Response.Write("<center>Designation of compliance officer field Can't be Empty</center>");
            }
            if (!(rd7.Checked || rd8.Checked))
            {
                Response.Write("<center>Periodic independency testing of AML Program field Can't be Empty</center>");
            }

            try
            {
                clsModel obj = new clsModel();

                obj.ClientName = txtbox1.Value;

                obj.ClientID = int.Parse(Text2.Value);
                bool isProcedure = rd1.Checked;
                bool isRisk = rd3.Checked;
                bool isDesignation = rd5.Checked;
                bool isTesting = rd7.Checked;
                bool isTraining = rd9.Checked;
                if (isProcedure)
                {
                    obj.Procedure = rd1.Value;
                }
                else
                {
                    obj.Procedure = rd2.Value;
                }
                if (isRisk)
                {
                    obj.Risk = rd3.Value;
                }
                else
                {
                    obj.Risk = rd4.Value;
                }
                if (isDesignation)
                {
                    obj.Designation = rd5.Value;
                }
                else
                {
                    obj.Designation = rd6.Value;
                }
                if (isTesting)
                {
                    obj.testing = rd7.Value;
                }
                else
                {
                    obj.testing = rd8.Value;
                }
                if (isTraining)
                {
                    obj.testing = rd9.Value;
                }
                else
                {
                    obj.testing = rd10.Value;
                }


                if ((obj.ClientName == null) || (Text2.Value == null) || (obj.Procedure == null) || (obj.Risk == null) || (obj.Designation == null) || (obj.testing == null))
                {
                    Response.Write("<script>alert('No Field Should Be Empty');</script>");
                    //Call ErrorTrap("");


                }
                //   obj.Procedure = rd1.Value;
                //obj.Risk = rd3.Value;
                //obj.Designation = rd5.Value;
                //obj.testing = rd7.Value;
                //List<clsModel> exam = new List<clsModel>();
                //exam.Add(obj);

                else
                {
                    try
                    {
                        string separator = ",";
                        string FilePath = @"C:\Users\venkatasaik\Desktop\Maker.csv";
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

                        //    Console.WriteLine(line);
                        //}

                        obj1.fun(obj);

                    }
                    catch (Exception exp1)
                    {
                        Response.Write(exp1.InnerException);
                    }
                }
            }
            catch (Exception exp)
            {

                Response.Write("<center>error occured</center>");
            }

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

        //protected void View_OnClick(object sender, EventArgs e)
        //{
        //    var reader = new StreamReader(File.OpenRead(@"C:\Users\keerthik\Desktop\Maker.csv"));


        //    while (!reader.EndOfStream)
        //    {
        //        var line = reader.ReadLine();
        //        var values = line.Split(',');
        //        Response.Write("<html>");
        //        Response.Write("<body style ='height:160px;width:1200px;Z-INDEX: 10200; LEFT: 288px; POSITION: absolute; TOP: 144px'>");
        //        //Response.Write("<center>");
        //        int i = 0;
        //            for (i = 0; i < values.Length; i++)
        //            {
        //                Response.Write(string.Format("{0};",  values[i]));
        //            Response.Write("\n");

        //        }
        //        Response.Write("</body>");
        //        //Response.Write("</center>");
        //        Response.Write("</html>");

        //    }



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
        //Console.Read
    }
}