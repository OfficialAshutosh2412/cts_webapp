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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = con;
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int index = e.RowIndex;
            GridViewRow row = (GridViewRow)GridView1.Rows[index];
            TextBox SignupName = (TextBox)row.FindControl("TextBox1");
            TextBox SignupPwsd = (TextBox)row.FindControl("TextBox2");
            TextBox SignupEmail = (TextBox)row.FindControl("TextBox10");
            TextBox SignupPin = (TextBox)row.FindControl("TextBox3");
            TextBox SignupGender = (TextBox)row.FindControl("TextBox4");
            TextBox SignupAddress = (TextBox)row.FindControl("TextBox5");
            TextBox SignupMS = (TextBox)row.FindControl("TextBox6");
            TextBox SignupLS = (TextBox)row.FindControl("TextBox7");
            TextBox SignupAdhaar = (TextBox)row.FindControl("TextBox8");
            TextBox SignupContact = (TextBox)row.FindControl("TextBox9");
            FileUpload SignupProfile = (FileUpload)row.FindControl("FileUpload1");
            con.Open();
            SignupProfile.SaveAs(Server.MapPath("/RegisterPhoto") + "/" + SignupProfile.FileName);
            //Signup code
            cmd.CommandText = "UPDATE Registration SET Username='" + SignupName.Text + "'," +
                " Password='" + SignupPwsd.Text + "'," +
                " Email='" + SignupEmail.Text + "'," +
                " Pincode=" + SignupPin.Text + "," +
                " Gender='" + SignupGender.Text + "'," +
                " Address='" + SignupAddress.Text + "'," +
                " Mstatus='" + SignupMS.Text + "'," +
                " Lstatus='" + SignupLS.Text + "'," +
                " AdharNumber=" + SignupAdhaar.Text + "," +
                " ContactNumber=" + SignupContact.Text + "," +
                " ProfilePhoto='" + SignupProfile.FileName + "'" +
                "WHERE Username=";
            cmd.ExecuteNonQuery();
            //Login code
            cmd.CommandText = "UPDATE Login SET Username='" + SignupName.Text.Replace("'", "''") + "'," +
                "Password= '" + SignupPwsd.Text.Replace("'", "''") + "', '" + "user" + "')";
            cmd.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
            con.Close();
        }
    }
}