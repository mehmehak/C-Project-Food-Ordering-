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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["admin"] != "1")
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string fname = tbFname.Text;
            string lname = tbLname.Text;
            string phone = tbphone.Text;
            string email = tbemail.Text;
            string address = tbAddress.Text;
               SqlConnection conn =
                  new SqlConnection(ConfigurationManager.ConnectionStrings["GroupprojectConnectionString2"].ConnectionString);
           
            if(tbFname.Text != "") {
                conn.Open();
                string cmdstring = "Update clientInfo set FirstName = '" + fname + "' where ID= '" + Convert.ToInt32(ddID.SelectedValue) + "'";
                SqlCommand upname = new SqlCommand(cmdstring, conn);
                upname.ExecuteScalar();
                upname.Dispose();
                conn.Close();
            }
            
            if(tbLname.Text != "") {
                conn.Open();
                string cmdstring1 = "Update clientInfo set LastName = '" + lname + "' where ID= '" + Convert.ToInt32(ddID.SelectedValue) + "'";
                SqlCommand upname1 = new SqlCommand(cmdstring1, conn);
                upname1.ExecuteScalar();
                upname1.Dispose();
                conn.Close();
            }
            if(tbAddress.Text != "") {
                conn.Open();
                string cmdstring2 = "Update clientInfo set Address = '" + address + "' where ID= '" + Convert.ToInt32(ddID.SelectedValue) + "'";
                SqlCommand upname2 = new SqlCommand(cmdstring2, conn);
                upname2.ExecuteScalar();
                upname2.Dispose();
                conn.Close();
            }
            
            if(tbemail.Text != "") {
                conn.Open();
                string cmdstring3 = "Update clientInfo set email = '" + email + "' where ID= '" + Convert.ToInt32(ddID.SelectedValue) + "'";
                SqlCommand upname3 = new SqlCommand(cmdstring3, conn);
                upname3.ExecuteScalar();
                upname3.Dispose();
                conn.Close();
            }
            
            if(tbphone.Text != "") {
                conn.Open();
                string cmdstring4 = "Update clientInfo set phone = '" + phone + "' where ID= '" + Convert.ToInt32(ddID.SelectedValue) + "'";
                SqlCommand upname4 = new SqlCommand(cmdstring4, conn);
                upname4.ExecuteScalar();
                upname4.Dispose();
                conn.Close();
            }

            Response.Write("Updated");       
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            tbFname.Text = " ";
            tbLname.Text = "";
            tbphone.Text = "";
            tbemail.Text = "";
            tbAddress.Text ="";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection conn =
                  new SqlConnection(ConfigurationManager.ConnectionStrings["GroupprojectConnectionString2"].ConnectionString);
            conn.Open();
            string cmdstring = "Delete From clientInfo where ID= '" + Convert.ToInt32(ddID.SelectedValue) + "'";
            SqlCommand delete = new SqlCommand(cmdstring, conn);
            delete.ExecuteScalar();
            delete.Dispose();
            conn.Close();
            Response.Write("Successfully Deleted");
        }

        protected void btnUpdateTable_Click(object sender, EventArgs e)
        {
           
                SqlConnection conn =
                 new SqlConnection(ConfigurationManager.ConnectionStrings["GroupprojectConnectionString4"].ConnectionString);
                conn.Open();
                //string cmdstring4 = "Update clientInfo set phone = '" "' where TableID= '" + Convert.ToInt32(ddID.SelectedValue) + "'";
                //SqlCommand upname4 = new SqlCommand(cmdstring4, conn);
                //upname4.ExecuteScalar();
                //upname4.Dispose();
                //conn.Close();
           

            Response.Write("Updated");
        }

        protected void btnDeleteTable_Click(object sender, EventArgs e)
        {
            SqlConnection conn =
                  new SqlConnection(ConfigurationManager.ConnectionStrings["GroupprojectConnectionString4"].ConnectionString);
            conn.Open();
            string cmdstring = "Delete From TableBook where TableID= '" + Convert.ToInt32(ddbooking.SelectedValue) + "'";
            SqlCommand delete = new SqlCommand(cmdstring, conn);
            delete.ExecuteScalar();
            delete.Dispose();
            conn.Close();
            Response.Write("Booking Successfully Deleted");
        }
    }
}