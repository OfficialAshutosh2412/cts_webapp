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

namespace CriminalTrackingSystem.Admin
{
    public partial class AdminContact : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = con;
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (username.SelectedValue=="--select user--")
            {
                email.Text = "";
            }
            else
            {
                adp = new SqlDataAdapter("SELECT Email FROM Contact WHERE Username='" + username.SelectedValue + "'", con);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                email.Text = dt.Rows[0]["Email"].ToString();
            }
        }

        protected void send_Click(object sender, EventArgs e)
        {
            try
            {
                sendEmail();
                Response.Redirect("./Emailsuccess.aspx");
            }
            catch(Exception ex)
            {
                Response.Write("<srcipt>alert('Something wrong! try again later')</script>");
            }
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
            mail.To.Add(email.Text.Trim());
            mail.Subject = "Regarding your contact request to CTS Portal";
            mail.Body = ("Name : "+username.Text+Environment.NewLine+"Message : "+reply.Text);
            smtp_Client.Port = Convert.ToInt32(System.Configuration.ConfigurationSettings.AppSettings["smtpPort"]);
            smtp_Client.Credentials = new System.Net.NetworkCredential(smtpUserName, smtpPassword);
            smtp_Client.EnableSsl = Convert.ToBoolean(System.Configuration.ConfigurationSettings.AppSettings["enableSSL"]);
            smtp_Client.Send(mail);
            
        }
    }
}