using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KYC
{ 

    public partial class NewCase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void submit_OnClick(object sender, EventArgs e)
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
                Response.Write("<center>Written Internal Places and Procedures  field Can't be Empty</center>");
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
                bool isProcedure1 = rd2.Checked;
                bool isRisk = rd3.Checked;
                bool isRisk1 = rd4.Checked;
                bool isDesignation = rd5.Checked;
                bool isDesignation1 = rd6.Checked;
                bool isTesting = rd7.Checked;
                bool isTesting1 = rd8.Checked;
                bool isTraining = rd9.Checked;
                bool isTraining1 = rd10.Checked;
                if (isProcedure)
                {
                    obj.Procedure = rd1.Value;
                }
                else if (isProcedure1)
                {
                    obj.Procedure = rd2.Value;
                }
                if (isRisk)
                {
                    obj.Risk = rd3.Value;
                }
                else if (isRisk1)
                {
                    obj.Risk = rd4.Value;
                }
                if (isDesignation)
                {
                    obj.Designation = rd5.Value;
                }
                else if (isDesignation1)
                {
                    obj.Designation = rd6.Value;
                }
                if (isTesting)
                {
                    obj.testing = rd7.Value;
                }
                else if (isTesting1)
                {
                    obj.testing = rd8.Value;
                }

                if ((obj.ClientName == null) || (Text2.Value == null) || (obj.Procedure == null) || (obj.Risk == null) || (obj.Designation == null) || (obj.testing == null))
                {
                    Response.Write("<script>alert('No Field Should Be Empty');</script>");
                    //Call ErrorTrap("");


                }
                //   obj.Procedure = rd1.Value;
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
                        string FilePath = (HttpContext.Current.Request.PhysicalApplicationPath)+"data\\Maker.csv";
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
    }
}
    
