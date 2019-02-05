using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.WebForms
{
    public partial class PassPortverification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Passportverify(object sender,EventArgs e)
        {
            ArrayList list = new ArrayList();
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=HDRBPRPA2; Initial Catalog=PrimeBankPOCdb; User ID=sa;Password=admin@123");
                con.Open();
                SqlCommand cmd = new SqlCommand("select  PassportNumber from Passport", con);
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    string value = rdr["PassportNumber"].ToString();
                    list.Add(value);
                }
                //    rst = stm.executeQuery(sql);
                //}
                con.Close();
                if (list.Contains(TextBox5.Text))
                {
                    con.Open();
                    Response.Write("<script>alert('your passport number is verified');</script>");
                    SqlCommand cmd1 = new SqlCommand("Update AdditionalDetails set PASSPORT_Status='SUCCESS' where PASSPORT_NUMBER=@PassportId", con);
                    cmd1.Parameters.AddWithValue("@PassportId", TextBox5.Text);
                    cmd1.ExecuteNonQuery();
                    

                }
                else
                {
                    Response.Write("<script>alert('your passport number is not verified');</script>");
                    con.Open();
                    SqlCommand cmd0 = new SqlCommand("Update AdditionalDetails set PAN_Status='FAILURE' where PASSPORT_Number=@Passport", con);
                    cmd0.Parameters.AddWithValue("@Passport", TextBox5.Text);
                    cmd0.ExecuteNonQuery();
                    con.Close();
                }
            
            }

            catch (Exception exp1)
            {
                Response.Write(exp1);
            }
        }
    }
}