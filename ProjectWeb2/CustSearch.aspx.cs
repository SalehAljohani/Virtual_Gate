using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWeb2
{
    public partial class CustSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] != "admin") Response.Redirect("Login.aspx");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\USERS\\ADMINISTRATOR\\SOURCE\\REPOS\\PROJECTWEB2\\DB\\MYDB.MDF\"; Integrated Security=True;Connect Timeout=30");
            string sql;

            sql = "SELECT * FROM myusers where name = '" + TextBox1.Text + "' and role = 'customer'";

            SqlCommand comm = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();

            if (reader.Read())
            {
                Label1.Text = "Name: " + (string)reader["name"];
                Label2.Text = "Password: " + (string)reader["password"];
                Label3.Text = "Role: " + (string)reader["role"];

                DateTime d1 = (DateTime)reader["regdate"];
                Label4.Text ="Date of Registeration: "+ d1.ToString("yyyy-mm-dd");


            }else
            {
                Label1.Text = "Customer not found";
            }
            reader.Close();
            conn.Close();

        }
    }
}