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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie Myc = Request.Cookies["c1"];
            if (Myc != null)                                                                                            
                if (Convert.ToBoolean(Myc["ck"]) == true)
                {
                    
                        string n = Myc["na"];
                        string p = Myc["pa"];
                        string r = Myc["ro"];

                        if (r == "admin")
                        {
                            Session["role"] = r;
                            Session["name"] = n;

                            Response.Redirect("adminHome.aspx");                            
                        }
                        else if(r == "customer") {

                            Session["role"] = r;
                            Session["name"] = n;
                                                                                                                                                
                            Response.Redirect("CustHome.aspx"); 
                        }
                   
                }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\USERS\\ADMINISTRATOR\\SOURCE\\REPOS\\PROJECTWEB2\\DB\\MYDB.MDF\"; Integrated Security=True;Connect Timeout=30");
            string sql;
            sql = "SELECT name, password, role from myusers where name ='" + TextBox1.Text + "' and  password ='" + TextBox2.Text + "' ";

            SqlCommand comm = new SqlCommand(sql, conn);
            conn.Open();

            SqlDataReader reader = comm.ExecuteReader();

            if (reader.Read())
            {
                
                HttpCookie Myc = Request.Cookies["c1"];
                if (Myc == null)
                {
                    Myc = new HttpCookie("c1");
                }

                Myc["na"] = (string)reader["name"];
                Myc["pa"] = (string)reader["password"];
                Myc["ro"] = (string)reader["role"];
                Myc["ck"] = Convert.ToString(CheckBox1.Checked);
                Response.Cookies.Add(Myc);
                if ((string)reader["role"] == "admin")
                {
                    Session["role"] = (string)reader["role"];
                    Session["name"] = (string)reader["name"];
                    Response.Redirect("adminHome.aspx");

                }else 
                {
                    Session["role"] = (string)reader["role"];
                    Session["name"] = (string)reader["name"];
                    Response.Redirect("CustHome.aspx");
                }
            }
            else { Label1.Text = "username or password wrong"; }

            reader.Close();
            conn.Close();
        }
    }
}