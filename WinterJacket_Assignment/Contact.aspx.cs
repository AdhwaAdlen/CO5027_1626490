using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace WinterJacket_Assignment
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSendEmail_Click(object sender, EventArgs e)
        {
            //Sends email using a mail server that requires login credentials and a secure, e.g. gmail

            //Create mail client and message with to and from address, and set message subject and body 
            SmtpClient smtpClient = new SmtpClient();
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            MailMessage msg = new MailMessage("nuradhwaadlen.sapawi@gmail.com", "nuradhwaadlen.sapawi@gmail.com");
            MailMessage msgToClient = new MailMessage();
            

            //Settings specific to the mail service, e.g. server location, port number and that ssl is required
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            //Create credentials - e.g. username and password for the account
            smtpClient.UseDefaultCredentials = false;
            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("Nuradhwaadlen.Sapawi@gmail.com", "22893adlensapawi");
            smtpClient.Credentials = credentials;

            try
            {
                smtpClient.Send(msg);
                litResult.Text = "<p>Success, mail sent using SMTP with secure connection and credentials</p>";
                txtEmail.Text = string.Empty;
                txtSubject.Text = string.Empty;
                txtBody.Text = string.Empty;

            }
            catch (Exception ex)
            {
                //Display the full error to the user
                litResult.Text = "<p>Send failed: " + ex.Message + ":" + ex.InnerException + "</p>";

            }
        }
    }
}