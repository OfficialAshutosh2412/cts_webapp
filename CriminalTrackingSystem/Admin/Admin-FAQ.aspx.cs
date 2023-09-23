using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CriminalTrackingSystem.Admin
{
    public partial class Admin_FAQ : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["type"] == null)
                Response.Redirect("~/Login.aspx");
            cmd.Connection = con;
        }
        protected void FAQButton1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd.CommandText = "INSERT INTO Faq VALUES('" + question.Text + "', '" +answer.Text+ "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Thank you, we heared you !')</script>");
            con.Close();
            GridView1.DataBind();
            question.Text = "";
            answer.Text = "";
        }
    }
}