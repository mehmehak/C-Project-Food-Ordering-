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
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Server=(local); Database=Groupproject; User=bohara; Password=deben"; ;
            SqlCommand cmd = conn.CreateCommand();
            SqlCommand cmd1 = conn.CreateCommand();
            SqlCommand cmd2 = conn.CreateCommand();
            SqlCommand cmd3 = conn.CreateCommand();
            string userexist = "select password from clientInfo where UserName= '" + tbusername.Text + "'";
            string admin = "select count(*) from clientInfo where UserName= '" + tbusername.Text + "' AND Admin = 1";
            string username = "select UserName from clientInfo where UserName = '" + tbusername.Text + "'";
            string name = "select Firstname, Lastname From clientInfo where UserName = '" + tbusername.Text + "'";
            try
            {
                conn.Open();
                cmd.CommandText = userexist;
                cmd1.CommandText = admin;
                cmd2.CommandText = username;
                cmd3.CommandText = name;
                string query = cmd.ExecuteScalar().ToString();
                string user1 = cmd2.ExecuteScalar().ToString();
                string cname = cmd3.ExecuteScalar().ToString();
                int logAdmin = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
                
                if (logAdmin != 1)
                {
                    if (query == tbpassword.Text && user1== tbusername.Text)
                    {
                        Session["user"] = "1";
                        Project p = new Project();
                        p.Fname = cname;
                        Session["name"] = p.Fname;
                        Response.Redirect("tablebook.aspx");
                        
                    }
                    else
                    {
                        Label1.Text = "Incorrect password or username, Try Again";
                    }
                }
                else
                {

                    if (query == tbpassword.Text && user1 == tbusername.Text)
                    {
                        Session["admin"] = "1";
                        Response.Redirect("Admin.aspx");

                    }
                    else
                    {
                        Label1.Text = "Incorrect password or username, Try Again";
                    }
                }
                cmd.Dispose();
                cmd1.Dispose();
                cmd2.Dispose();
                conn.Close();
            }
            catch (Exception ex)
            {
                
            }
            
        }
    }
    
}