using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWeb2
{
    public partial class CustHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] != "customer") Response.Redirect("Login.aspx");
            Label1.Text = "Welcome " + (string)Session["name"];

            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\USERS\\ADMINISTRATOR\\SOURCE\\REPOS\\PROJECTWEB2\\DB\\MYDB.MDF\"; Integrated Security=True;Connect Timeout=30");
            String sql;
            sql = "SELECT * FROM itemsall where discountYES = '" + true + "' ";
            SqlCommand comm = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();
            Repeater1.DataSource = reader;
            Repeater1.DataBind();
            reader.Close();
            conn.Close();
        }
    }
}