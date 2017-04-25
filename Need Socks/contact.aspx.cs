using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Need_Socks
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            

            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential("needsocks2017@gmail.com", "socks2017");
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = userpass;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(TextEmail.Text);
            msg.To.Add (new MailAddress( "needsocks2017@gmail.com"));

            msg.Subject = "Subject : " + TextSubject.Text;
            msg.IsBodyHtml = true;
            msg.Body = "Message From : " + TextName.Text + ", Email : " + TextEmail.Text + ", Message : " + TextComment.Text;

            try
            {
                smtpClient.Send(msg);
                result.Text = "<p> Message has been succesfully sent</p>";
            }
            catch (Exception ex)
            {
                result.Text = "<p> Message failed :" + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}