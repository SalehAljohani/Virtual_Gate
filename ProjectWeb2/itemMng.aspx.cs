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
    public partial class itemMng : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] != "admin") Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.FileName != "") {
                string imgfile = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("Img") + "\\" + imgfile);
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\USERS\\ADMINISTRATOR\\SOURCE\\REPOS\\PROJECTWEB2\\DB\\MYDB.MDF\"; Integrated Security=True;Connect Timeout=30");
                string sql;
                sql = "insert into itemsall(name,discription,price,quantity,discountYES,discountNO, category, imgfile) values ('" + TextBox1.Text + "' , '" + TextBox2.Text + "' , '" + TextBox3.Text + "' , '" + TextBox4.Text + "' , '" + RadioButton1.Checked + "' , '" + RadioButton2.Checked + "' , '" + DropDownList1.Text + "' , '" + imgfile + "')";
                SqlCommand comm = new SqlCommand(sql, conn);
                try
                {
                    conn.Open();
                    comm.ExecuteNonQuery();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    RadioButton1.Checked = false;
                    RadioButton2.Checked = false;
                    DropDownList1.ClearSelection();
                    Label1.Text = "Sucessfully Inserted!";
                }
                catch (Exception ex)
                { Label1.Text = "Exception!<br />" + ex.Message; }
                finally { conn.Close(); }
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {

            if (FileUpload1.FileName != "")
            {
                string imgfile = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("Img") + "\\" + imgfile);
                SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\USERS\\ADMINISTRATOR\\SOURCE\\REPOS\\PROJECTWEB2\\DB\\MYDB.MDF\"; Integrated Security=True;Connect Timeout=30");
                string sql;
                sql = "update itemsall set discription = '" + TextBox2.Text + "' , price = '" + TextBox3.Text + "' , quantity = '" + TextBox4.Text + "' ,  discountYES = '" + RadioButton1.Checked + "' , discountNO = '" + RadioButton2.Checked + "' ,  category = '" + DropDownList1.Text + "' ,imgfile = '" + imgfile + "' where name = '" + TextBox1.Text + "'";
                SqlCommand comm = new SqlCommand(sql, conn);
                conn.Open();
                comm.ExecuteNonQuery();

                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
                DropDownList1.ClearSelection();
                Label1.Text = "Updated!!";

            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\USERS\\ADMINISTRATOR\\SOURCE\\REPOS\\PROJECTWEB2\\DB\\MYDB.MDF\"; Integrated Security=True;Connect Timeout=30");
            string sql;
            sql = " SELECT * FROM itemsall where name = '" + TextBox1.Text + "' ";
            SqlCommand comm = new SqlCommand(sql, conn);

            conn.Open();
            SqlDataReader reader = comm.ExecuteReader();

            if (reader.Read())
            {
                TextBox2.Text = ((string)reader["discription"]);
                TextBox3.Text = Convert.ToString((int)reader["price"]);
                TextBox4.Text = Convert.ToString((int)reader["quantity"]);
                RadioButton1.Checked = ((Boolean)reader["discountYES"]);
                RadioButton2.Checked = ((Boolean)reader["discountNO"]);
                DropDownList1.Text = ((string)reader["category"]);
                Image1.ImageUrl = "~//Img//" + ((string)reader["imgfile"]);
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\USERS\\ADMINISTRATOR\\SOURCE\\REPOS\\PROJECTWEB2\\DB\\MYDB.MDF\"; Integrated Security=True;Connect Timeout=30");
            string sql;
            sql = "delete from itemsall where name ='" + TextBox1.Text + "'";
            SqlCommand comm = new SqlCommand(sql, conn);
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
                DropDownList1.ClearSelection();
                Label1.Text = "Sucessfully Deleted!";
            }
            catch (Exception ex)
            { Label1.Text = "Exception!<br />" + ex.Message; }
            finally { conn.Close(); }
        }
    }
}