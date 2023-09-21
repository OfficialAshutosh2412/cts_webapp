using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace CriminalTrackingSystem
{
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = con;
        }
        private void sendEmail()
        {
            string smtpUserName;
            string smtpPassword;
            MailMessage mail = new MailMessage();
            SmtpClient smtp_Client = new SmtpClient(System.Configuration.ConfigurationSettings.AppSettings["smtpClient"]);

            smtpUserName = System.Configuration.ConfigurationSettings.AppSettings["smtpUserName"];
            smtpPassword = System.Configuration.ConfigurationSettings.AppSettings["smtpPassword"];
            mail.From = new MailAddress(smtpUserName);
            mail.To.Add(mails.Text.Trim());
            mail.Subject = "Regarding your feedback to CTS Portal";
            mail.Body = ("Name : " + name.Text + Environment.NewLine + "Thank you for your gracefull words. ");
            smtp_Client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_Client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp_Client.EnableSsl = Convert.ToBoolean(System.Configuration.ConfigurationSettings.AppSettings["enableSSL"]);
            smtp_Client.Send(mail);

        }
        protected void Send_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();
                cmd.CommandText = "INSERT INTO Feedback VALUES('" + name.Text + "', '" + mails.Text + "', '" + words.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Thank you for your words !')</script>");
                sendEmail();
                con.Close();
                name.Text = "";
                mails.Text = "";
                words.Text = "";
            }
            catch (Exception)
            {
                Response.Redirect("~/Error_message.aspx");
            }
        }
    }
}