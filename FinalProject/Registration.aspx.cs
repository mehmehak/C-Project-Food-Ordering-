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
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //GroupprojectConnectionString2
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection conn =
                   new SqlConnection(ConfigurationManager.ConnectionStrings["GroupprojectConnectionString2"].ConnectionString);
            conn.Open();              
            
            string cmdstring = "select count(*) from clientInfo where UserName= '" + tbuser.Text + "'";
            SqlCommand userexist = new SqlCommand(cmdstring, conn);
            int temp = Convert.ToInt32(userexist.ExecuteScalar().ToString());
            userexist.Dispose();
            //conn.Close();
            if (temp == 1)
            {
                Response.Write("Cannot use this username! Already exists, Try another ");
            }
           
                else
                {
                    try
                    {
                        string query = "Insert into clientInfo (FirstName, LastName, Address, Phone, Email, Username, Password) " +
                        "values(@FirstName, @LastName, @Address, @Phone, @Email, @Username, @Password )";
                    SqlCommand insert = new SqlCommand(query, conn);
                    insert.Parameters.AddWithValue("@FirstName", tbFname.Text);
                    insert.Parameters.AddWithValue("@LastName", tbLname.Text);
                    insert.Parameters.AddWithValue("@Address", tbAddress.Text);
                    insert.Parameters.AddWithValue("@Phone", tbphone.Text);
                    insert.Parameters.AddWithValue("@Email", tbemail.Text);              
                    insert.Parameters.AddWithValue("@Username", tbuser.Text);
                    insert.Parameters.AddWithValue("@Password", tbpassword.Text);
                    insert.ExecuteNonQuery();

                    Response.Write("Successfully Registered");
                    conn.Close();
                    }
                    catch (Exception ex)
                    {
                    Label1.Text = "Unsuccessful";
                    Response.Write(ex.ToString());
                }
                    
                }

            
        }
    }
}