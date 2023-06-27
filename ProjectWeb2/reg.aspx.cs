using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWeb2
{
    public partial class reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox2.Text == TextBox3.Text)
            {
                users ur = new users(TextBox1.Text, TextBox2.Text, "customer");
                ur.register();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                Label1.Text = "seccessfuly inserted";
            }
            else
            {
                Label1.Text = "password must match";
            }
            
        }
    }
}