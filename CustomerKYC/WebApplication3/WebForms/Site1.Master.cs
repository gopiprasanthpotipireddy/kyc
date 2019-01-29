using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //private void Bindgrid(DataTable csvdt)
        //{
        //    GridView1.DataSource = csvdt;
        //    GridView1.DataBind();
        //}
        //protected void demo(object sender, EventArgs e)
        //{
        //    Response.Redirect("Submits.aspx");
        //    //Creating object of datatable  
        //    DataTable tblcsv = new DataTable();
        //    //creating columns  
        //    tblcsv.Columns.Add("Name");
        //    tblcsv.Columns.Add("City");
        //    tblcsv.Columns.Add("Address");
        //    tblcsv.Columns.Add("Designation1");
        //    tblcsv.Columns.Add("Designation11");
        //    tblcsv.Columns.Add("Designation111");
        //    tblcsv.Columns.Add("Designation1112");

        //    tblcsv.Columns.Add("Designatio1");
        //    tblcsv.Columns.Add("Designatio11");
        //    tblcsv.Columns.Add("Dignatio11");
        //    tblcsv.Columns.Add("Dgnan1112");
        //    tblcsv.Columns.Add("Desiaon1");
        //    tblcsv.Columns.Add("Designn11");
        //    tblcsv.Columns.Add("Designatio");
        //    tblcsv.Columns.Add("Designation12");




        //    //getting full file path of Uploaded file  
        //    string CSVFilePath = Path.GetFullPath(HttpContext.Current.Request.PhysicalApplicationPath) + "csv\\details.csv";
        //    //Reading All text  
        //    string ReadCSV = File.ReadAllText(CSVFilePath);
        //    //spliting row after new line  
        //    foreach (string csvRow in ReadCSV.Split('\n'))
        //    {
        //        if (!string.IsNullOrEmpty(csvRow))
        //        {
        //            //Adding each row into datatable  
        //            tblcsv.Rows.Add();
        //            int count = 0;
        //            foreach (string FileRec in csvRow.Split(','))
        //            {
        //                tblcsv.Rows[tblcsv.Rows.Count - 1][count] = FileRec;
        //                count++;
        //            }
        //        }
        //        //Calling Bind Grid Functions  
        //        Bindgrid(tblcsv);

        //    }
        //}
    }
}