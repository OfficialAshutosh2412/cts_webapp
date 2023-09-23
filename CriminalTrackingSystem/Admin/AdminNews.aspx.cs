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
    public partial class AdminNews : System.Web.UI.Page
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
        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd.CommandText = "INSERT INTO News VALUES('"+title.Text+"', '"+data.Text+"', '"+datetime.Text+"')";
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("<script>alert('record inserted !')</script>");
            title.Text = "";
            data.Text = "";
            datetime.Text = "";
        }
    }
}