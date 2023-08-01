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
    public partial class Contact : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = con;
        }

        protected void ContactBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd.CommandText = "INSERT INTO Contact VALUES('"+ContactName.Text+"', '"+ContactEmail.Text+"', '"+ContactNumber.Text+"', '"+ContactPurpose.Text+"', '"+ContactDetails.Text+"')";
            cmd.ExecuteNonQuery();
            Label1.Text = "Thank you for contacting us. We answer you ASAP...";
            con.Close();
            ContactName.Text = "";
            ContactEmail.Text = "";
            ContactNumber.Text = "";
            ContactPurpose.Text = "";
            ContactDetails.Text = "";
        }
    }
}