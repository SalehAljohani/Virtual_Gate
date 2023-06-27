using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectWeb2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            var mail = new MailMessage();
            mail.From = new MailAddress("voogo11@gmail.com");
            mail.To.Add(TextBox1.Text);
            mail.Subject = "Test Mail - 1";
            mail.IsBodyHtml = true;
            mail.Body = TextBox2.Text;
            SmtpServer.Port = 587;
            SmtpServer.UseDefaultCredentials = false;
            SmtpServer.Credentials = new System.Net.NetworkCredential("voogo11@gmail.com", "zbaposzhrqdevzvx");
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);
            Label1.Text = "Email sent.";
        }
    }
}