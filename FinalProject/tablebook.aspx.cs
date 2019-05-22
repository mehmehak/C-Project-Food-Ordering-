using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace FinalProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != "1")
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn =
                 new SqlConnection(ConfigurationManager.ConnectionStrings["GroupprojectConnectionString4"].ConnectionString);
            conn.Open();
            string name = (string)(Session["name"]);
            //Label1.Text = name;
            string t1 = cbtable1.Text;
            string t2 = cbtable2.Text;
            string t3 = cbtable3.Text;
            string t4 = cbtable4.Text;
            string c1 = cbcabin.Text;
            string p1 = cbpartyhall.Text;


            string cmdstring = "Select count(*) From TableBook where Table1= 'Tabel 1'";
            string cmdstring1 = "Select count(*) From TableBook where Table2= 'Table 2'";
            string cmdstring2 = "Select count(*) From TableBook where Table3= 'Table 3'";
            string cmdstring3 = "Select count(*) From TableBook where Table4= 'Table 4'";
            string cmdstring4 = "Select count(*) From TableBook where Cabin= 'Cabin'";
            string cmdstring5 = "Select count(*) From TableBook where Hall= 'Party Hall'";

            //string cmdstring = "Select count(*) From TableBook where Table1= '" + t1 + "'";
            //string cmdstring1 = "Select count(*) From TableBook where Table2= '" + t2 + "'";
            //string cmdstring2 = "Select count(*) From TableBook where Table3= '" + t3 + "'";
            //string cmdstring3 = "Select count(*) From TableBook where Table4= '" + t4 + "'";
            //string cmdstring4 = "Select count(*) From TableBook where Cabin= '" + c1 + "'";
            //string cmdstring5 = "Select count(*) From TableBook where Hall= '" + p1 + "'";

            SqlCommand check = new SqlCommand(cmdstring, conn);
            SqlCommand check1 = new SqlCommand(cmdstring1, conn);
            SqlCommand check2 = new SqlCommand(cmdstring2, conn);
            SqlCommand check3 = new SqlCommand(cmdstring3, conn);
            SqlCommand check4 = new SqlCommand(cmdstring4, conn);
            SqlCommand check5 = new SqlCommand(cmdstring5, conn);
           
            int temp = 0, temp1 = 0, temp2 = 0, temp3 = 0, temp4 = 0, temp5 = 0;
            temp = Convert.ToInt32(check.ExecuteScalar().ToString());
            temp1 = Convert.ToInt32(check1.ExecuteScalar().ToString());
            temp2 = Convert.ToInt32(check2.ExecuteScalar().ToString());
            temp3 = Convert.ToInt32(check3.ExecuteScalar().ToString());
            temp4 = Convert.ToInt32(check4.ExecuteScalar().ToString());
            temp5 = Convert.ToInt32(check5.ExecuteScalar().ToString());
                        

            if (temp == 1)
            {
                lbbook.Text = " Table 1 already booked, Please try another";
                check.Dispose();             
            }
           else if (temp1 == 1)
            {
                lbbook.Text = " Table 2 already booked, Please try another";
                check.Dispose();
            }

            else if (temp2 == 1)
            {
                lbbook.Text = "Table 3 already booked, Please try another";
                check2.Dispose();
            }
            else if (temp3 == 1)
            {
                lbbook.Text = "Table 4 already booked, Please try another";
                check3.Dispose();

            }
            else if (temp4 == 1)
            {
                lbbook.Text = "Cabin already booked";
                check4.Dispose();
            }
            else if (temp5 == 1)
            {
                lbbook.Text = "Not Available Now, try later";
                check5.Dispose();
            }
            
            else
            {
                
                string ta1 = "", ta2 = "", ta3 = "", ta4 = "", ca = "", ha = "";
                if (cbtable1.Checked == true) { ta1 = cbtable1.Text; } 
                if (cbtable2.Checked == true) { ta2 = cbtable2.Text; }
                if (cbtable3.Checked == true) { ta3 = cbtable3.Text; }
                if (cbtable4.Checked == true) { ta4 = cbtable4.Text; }
                if (cbcabin.Checked == true) { ca = cbcabin.Text; }
                if (cbpartyhall.Checked == true) { ha = cbpartyhall.Text; }
                string query = "Insert into TableBook (ClientName, Table1, Table2, Table3, Table4, Cabin, Hall, Email, phone, Description) " +
                    "values(@ClientName, @Table1, @Table2, @Table3, @Table4, @Cabin, @Hall, @Email, @phone, @Description)";
                SqlCommand insert = new SqlCommand(query, conn);
                insert.Parameters.AddWithValue("@ClientName", name);
                insert.Parameters.AddWithValue("@Table1", ta1);
                insert.Parameters.AddWithValue("@Table2", ta2);
                insert.Parameters.AddWithValue("@Table3", ta3);
                insert.Parameters.AddWithValue("@Table4", ta4);
                insert.Parameters.AddWithValue("@Cabin", ca);
                insert.Parameters.AddWithValue("@Hall", ha);
                insert.Parameters.AddWithValue("@Email", tbEmail.Text);
                insert.Parameters.AddWithValue("@Phone", tbPhone.Text);
                insert.Parameters.AddWithValue("@Description", tbdesc.Text);
                insert.ExecuteNonQuery();
                insert.Dispose();
                lbbook.Text = "Booking Successful";
                

            }            
            conn.Close();
        }
    }
}