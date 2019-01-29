using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            demo(sender, e);
        }
        private void Bindgrid(DataTable csvdt)
        {
            GridView1.DataSource = csvdt;
            GridView1.DataBind();
        }
        protected void demo(object sender, EventArgs e)
        {

            //Creating object of datatable  
            DataTable tblcsv = new DataTable();
            //creating columns  
            tblcsv.Columns.Add("Prefix");
            tblcsv.Columns.Add("FirstName");
            tblcsv.Columns.Add("MiddleName");
            tblcsv.Columns.Add("LastName");
            tblcsv.Columns.Add("PAN Number");
            tblcsv.Columns.Add("Aadhar Number");
            tblcsv.Columns.Add("Passport Number");
            tblcsv.Columns.Add("Occupation");
            tblcsv.Columns.Add("Mobile Number");
            tblcsv.Columns.Add("Email Id");
            tblcsv.Columns.Add("Overall Verification");
            tblcsv.Columns.Add("ID Verification");
            tblcsv.Columns.Add("Address Verification");
            //tblcsv.Columns.Add("Sanction Screening");
            //tblcsv.Columns.Add("Credit Risk");

            //Additional Details
            //tblcsv.Columns.Add("Source of Funds");
            //tblcsv.Columns.Add("Gross Annual Income");
            //tblcsv.Columns.Add("Residence Type");
            //tblcsv.Columns.Add("Flat No./Building Name");
            //tblcsv.Columns.Add("Street Number");
            //tblcsv.Columns.Add("Landmark");
            //tblcsv.Columns.Add("State");
            //tblcsv.Columns.Add("City");
            //tblcsv.Columns.Add("PIN Code");
            //tblcsv.Columns.Add("Country");

            //getting full file path of Uploaded file  
            ///
            ///
            ///
            string CSVFilePath = Path.GetFullPath(HttpContext.Current.Request.PhysicalApplicationPath) + "csv\\details.csv";
            //Reading All text  
            string ReadCSV = File.ReadAllText(CSVFilePath);
            ///
            ///
            ///
            //spliting row after new line  
            ///
            ///commented for sql
            ///
            foreach (string csvRow in ReadCSV.Split('\n'))
            {
                if (!string.IsNullOrEmpty(csvRow))
                {
                    //Adding each row into datatable  
                    tblcsv.Rows.Add();
                    int count = 0;
                    foreach (string FileRec in csvRow.Split(','))
                    {
                        tblcsv.Rows[tblcsv.Rows.Count - 1][count] = FileRec;
                        count++;
                    }
                    if (count == 10 || count == 11 || count == 12)
                    {
                        tblcsv.Rows[tblcsv.Rows.Count - 1][count] = "not initiated";
                    }
                }


                ///
                ///comment ending
                ///

                // string conn1 = "";
                // conn1 = ConfigurationManager.ConnectionStrings["dbconnection"].ToString();
                // SqlConnection objsqlconn1 = new SqlConnection(conn1);
                // string sqlQuery = "select * from Applicant_Details";
                // SqlCommand objcmd2 = new SqlCommand(sqlQuery, objsqlconn1);
                // objsqlconn1.Open();
                // SqlDataReader rdr1 = objcmd2.ExecuteReader();
                //int  count = 0;
                // while (rdr1.Read())
                // {
                //     count = 0;
                //     tblcsv.Rows[tblcsv.Rows.Count - 1][count] = rdr1["ApplicantID"].ToString();
                //     count++;
                //     tblcsv.Rows[tblcsv.Rows.Count - 1][count] = rdr1["FirstName"].ToString();
                //     count++;
                //     tblcsv.Rows[tblcsv.Rows.Count - 1][count] = rdr1["MiddleName"].ToString();
                //     count++;
                //     tblcsv.Rows[tblcsv.Rows.Count - 1][count] = rdr1["LastName"].ToString();
                //     count++;
                //     tblcsv.Rows[tblcsv.Rows.Count - 1][count] = rdr1["PAN_Number"].ToString();
                //     count++;
                //     tblcsv.Rows[tblcsv.Rows.Count - 1][count] = rdr1["AADHAR_Number"].ToString();
                //     count++;
                //     tblcsv.Rows[tblcsv.Rows.Count - 1][count] = rdr1["PASSPORT_Number"].ToString();
                //     count++;

                // }
                //Calling Bind Grid Functions  
                Bindgrid(tblcsv);

            }
        }

    }
}
