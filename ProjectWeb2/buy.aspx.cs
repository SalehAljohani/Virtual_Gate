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
    public partial class buy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] != "customer") Response.Redirect("Login.aspx");
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\USERS\\ADMINISTRATOR\\SOURCE\\REPOS\\PROJECTWEB2\\DB\\MYDB.MDF\"; Integrated Security=True;Connect Timeout=30");

            string sql;
            sql = "SELECT * FROM itemsall where Id = '" + Request.QueryString["idd"] + "' ";

            SqlCommand comm = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();

            if (reader.Read())
            {
                TextBox1.Text = (string)reader["name"];
                TextBox2.Text = Convert.ToString((int)reader["price"]);
                RadioButton1.Checked = (Boolean)reader["discountYES"];
                RadioButton2.Checked = (Boolean)reader["discountNO"];
                TextBox3.Text = (string)reader["category"];
                Image1.ImageUrl = "~//Img//" + (string)reader["imgfile"];

            }
            else
            {
                TextBox1.Text = "no data";
            }
            reader.Close();
            conn.Close();
        }
        double totalprice(double pr, double qa)
        {

            double dis = (pr * qa * 10)/ 100;
            double total = (pr*qa) - dis; 
            return total;
            
        }
        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\USERS\\ADMINISTRATOR\\SOURCE\\REPOS\\PROJECTWEB2\\DB\\MYDB.MDF\"; Integrated Security=True;Connect Timeout=30");

            string sql;
            sql = "SELECT price, quantity, discountYES FROM itemsall where id = '" + Request.QueryString["idd"] + "'";
            SqlCommand comm = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();

            if (reader.Read())
            {
                double price = Convert.ToDouble((int)reader["price"]);
                double quantity = Convert.ToDouble((int)reader["quantity"]);
                string discount = Convert.ToString((Boolean)reader["discountYES"]);
                double userQ = Convert.ToDouble(TextBox4.Text);
                if (quantity >= userQ)
                {
                    
                    if (discount.ToLower() == "false")
                    {
                        double c = (price * userQ);
                        Label1.Text = "You need to pay: " + Convert.ToString(c);
                        Button1.Enabled = true;

                    }
                    else
                    {
                        double c = totalprice(price, userQ);
                        Label1.Text = "You need to pay: " + Convert.ToString(c);
                        Button1.Enabled = true;
                    }
                }
                else
                {
                    Label1.Text = "The maximum quantity is: " + quantity;
                    Button1.Enabled = false;
                }

            }
            reader.Close();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\USERS\\ADMINISTRATOR\\SOURCE\\REPOS\\PROJECTWEB2\\DB\\MYDB.MDF\"; Integrated Security=True;Connect Timeout=30");
            string sql;
            sql = "UPDATE itemsall SET quantity = quantity - '" + TextBox4.Text + "' where id = '" + Request.QueryString["idd"] + "'";

            SqlCommand comm = new SqlCommand(sql, conn);
            conn.Open();
            comm.ExecuteNonQuery();

            sql = "insert into orders (itemid,username,quantity) values ('" + Request.QueryString["idd"] + "' , '" + (string)Session["name"] + "' , '" + TextBox4.Text + "' )  ";
            comm = new SqlCommand(sql, conn);
            comm.ExecuteNonQuery();
            conn.Close();
            Label2.Text = "thank you, your order is in my purchase page";

        }


    }
}