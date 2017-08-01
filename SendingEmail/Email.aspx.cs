using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SendingEmail
{
    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void sendbtn_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage message = new MailMessage(from.Text, to.Text, subject.Text, body.Text);
                SmtpClient client = new SmtpClient("smtp.gmail.com",587);
                client.EnableSsl = true;
                client.Credentials = new System.Net.NetworkCredential(from.Text, pwd.Text);
                client.Send(message);

            }
            catch(Exception)
            {
         
            }
        }
    }
}