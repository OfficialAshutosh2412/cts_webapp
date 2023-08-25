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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dtr;
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = con;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("SELECT * FROM Login WHERE Username='" + LoginName.Text + "' and Password='" + LoginPassword.Text + "'", con);
            dtr = cmd.ExecuteReader();
            if (dtr.Read())
            {
                if (dtr[2].ToString() == "user")
                {
                    Session["user"] = LoginName.Text;
                    Response.Redirect("~/Registration/RegisterHome.aspx");
                }
                else if (dtr[2].ToString() == "admin")
                {
                    Session["user"] = LoginName.Text;
                    Response.Redirect("~/Admin/AdminHome.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('invalid username and password')</script>");
            }

        }
    }
}