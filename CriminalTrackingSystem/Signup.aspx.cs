using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace CriminalTrackingSystem
{
    public partial class Signup : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = con;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SignupProfile.SaveAs(Server.MapPath("RegisterPhoto") + "/" + SignupProfile.FileName);
                Literal1.Text = "RegisterPhoto" + "/" + SignupProfile.FileName;
                //Signup code
                cmd.CommandText = "INSERT INTO Registration VALUES('" + SignupName.Text + "', '" + SignupPwsd.Text + "', '" + SignupEmail.Text + "', " + SignupPin.Text + ", '" + SignupGender.SelectedValue + "', '" + SignupAddress.Text + "', '" + SignupMS.SelectedValue + "', '" + SignupLS.SelectedValue + "', " + SignupAdhaar.Text + ", " + SignupContact.Text + ", '" + SignupProfile.FileName + "')";
                cmd.ExecuteNonQuery();
                //Login code
                cmd.CommandText = "INSERT INTO Login VALUES('" + SignupName.Text.Replace("'", "''") + "', '" + SignupPwsd.Text.Replace("'", "''") + "', '" + "user" + "')";
                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
                con.Close();
                SignupName.Text = "";
                SignupPwsd.Text = "";
                SignupCrmfPwsd.Text = "";
                SignupEmail.Text = "";
                SignupPin.Text = "";
                SignupAddress.Text = "";
                SignupAdhaar.Text = "";
                SignupContact.Text = "";
            }
            catch (Exception)
            {
                Response.Redirect("~/Error_message.aspx");
            }
        }

        protected void tokenNo_TextChanged(object sender, EventArgs e)
        {

            if (tokenNo.Text == "SDFSD8G13D2G198T79RT46UTY1I2JHK3H26TU74T65O")
            {
                AdminButton.Visible = true;
            }
            else
            {
                AdminButton.Visible = false;
            }
        }

        protected void AdminButton_Click(object sender, EventArgs e)
        {
            con.Open();
            SignupProfile.SaveAs(Server.MapPath("RegisterPhoto") + "/" + SignupProfile.FileName);
            Literal1.Text = "RegisterPhoto" + "/" + SignupProfile.FileName;
            //Signup code
            cmd.CommandText = "INSERT INTO Registration VALUES('" + SignupName.Text + "', '" + SignupPwsd.Text + "', '" + SignupEmail.Text + "', " + SignupPin.Text + ", '" + SignupGender.SelectedValue + "', '" + SignupAddress.Text + "', '" + SignupMS.SelectedValue + "', '" + SignupLS.SelectedValue + "', " + SignupAdhaar.Text + ", " + SignupContact.Text + ", '" + SignupProfile.FileName + "')";
            cmd.ExecuteNonQuery();
            //Login code
            cmd.CommandText = "INSERT INTO Login VALUES('" + SignupName.Text.Replace("'", "''") + "', '" + SignupPwsd.Text.Replace("'", "''") + "', '" + "admin" + "')";
            cmd.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
            con.Close();
            SignupName.Text = "";
            SignupPwsd.Text = "";
            SignupCrmfPwsd.Text = "";
            SignupEmail.Text = "";
            SignupPin.Text = "";
            SignupAddress.Text = "";
            SignupAdhaar.Text = "";
            SignupContact.Text = "";
        }
    }
}