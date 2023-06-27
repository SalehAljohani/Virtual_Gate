using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWeb2
{
    public partial class detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] != "customer") Response.Redirect("Login.aspx");

            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\USERS\\ADMINISTRATOR\\SOURCE\\REPOS\\PROJECTWEB2\\DB\\MYDB.MDF\"; Integrated Security=True;Connect Timeout=30");
            string sql;
            sql = "SELECT * FROM itemsall where id = '" + Request.QueryString["idd"] + "' ";
            SqlCommand comm = new SqlCommand(sql, conn);

            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();

            if (reader.Read())
            {

                TextBox1.Text = (string)reader["name"];
                TextBox2.Text = Convert.ToString((int)reader["price"]);
                TextBox4.Text = (string)reader["category"];
                RadioButton1.Checked = (Boolean)reader["discountYES"];
                RadioButton2.Checked = (Boolean)reader["discountNO"];
                Image1.ImageUrl = "~//img//" + (string)reader["imgfile"];
            }
            reader.Close();
            conn.Close();
        }
    }
}