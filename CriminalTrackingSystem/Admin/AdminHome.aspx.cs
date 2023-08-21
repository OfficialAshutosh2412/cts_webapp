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
    public partial class AdminHome : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["user"] == null)
                Response.Redirect("~/Login.aspx");

            adminName.Text = Session["user"].ToString();
            cmd.Connection = con;
            con.Open();

            //User counting
            cmd.CommandText = "SELECT COUNT(*) FROM Registration";
            int user = (int)cmd.ExecuteScalar();
            usercount.Text = user.ToString();
            cmd.ExecuteNonQuery();

            //crime complain counting
            cmd.CommandText = "SELECT COUNT(*) FROM CrimeComplain";
            int crimecount = (int)cmd.ExecuteScalar();
            cc.Text = crimecount.ToString();
            cmd.ExecuteNonQuery();

            //general complain counting
            cmd.CommandText = "SELECT COUNT(*) FROM GeneralComplain";
            int generalcount = (int)cmd.ExecuteScalar();
            gc.Text = generalcount.ToString();
            cmd.ExecuteNonQuery();

            //missing person case counting
            cmd.CommandText = "SELECT COUNT(*) FROM MissingPerson";
            int mpcount = (int)cmd.ExecuteScalar();
            mp.Text = mpcount.ToString();
            cmd.ExecuteNonQuery();

            //missing valuable case counting
            cmd.CommandText = "SELECT COUNT(*) FROM MissingValuable";
            int mvcount = (int)cmd.ExecuteScalar();
            mv.Text = mvcount.ToString();
            cmd.ExecuteNonQuery();

            //contact us counting
            cmd.CommandText = "SELECT COUNT(*) FROM MissingValuable";
            int contcount = (int)cmd.ExecuteScalar();
            contact.Text = contcount.ToString();
            cmd.ExecuteNonQuery();

            //faq counting
            cmd.CommandText = "SELECT COUNT(*) FROM Faq";
            int faqcount = (int)cmd.ExecuteScalar();
            faq.Text = faqcount.ToString();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}