using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

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
            con.Open();
            SignupProfile.SaveAs(Server.MapPath("RegisterPhoto") + "/" + SignupProfile.FileName);
            Literal1.Text = "RegisterPhoto" + "/" + SignupProfile.FileName;
            //Signup code
            cmd.CommandText = "INSERT INTO Registration VALUES('" + SignupName.Text + "', '" + SignupPwsd.Text + "', '" + SignupEmail.Text + "', " + SignupPin.Text + ", '" + SignupGender.SelectedValue + "', '" + SignupAddress.Text + "', '" + SignupMS.SelectedValue + "', '" + SignupLS.SelectedValue + "', " + SignupAdhaar.Text + ", " + SignupContact.Text + ", '" + SignupProfile.FileName + "')";
            cmd.ExecuteNonQuery();
            //Login code
            cmd.CommandText = "INSERT INTO Login VALUES('" + SignupName.Text.Replace("'", "''") + "', '" + SignupPwsd.Text.Replace("'", "''") + "')";
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