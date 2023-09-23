using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CriminalTrackingSystem.Registration
{
    public partial class RegisterHome : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("~/Login.aspx");

            Label1.Text = Session["user"].ToString();
            cmd.Connection = con;
            con.Open();
            //crime complain counting
            cmd.CommandText = "SELECT COUNT(*) FROM CrimeComplain  WHERE LoginUsername='"+Session["user"]+"'";
            int crimecount = (int)cmd.ExecuteScalar();
            cc.Text = crimecount.ToString();
            cmd.ExecuteNonQuery();
            //general complain counting
            cmd.CommandText = "SELECT COUNT(*) FROM GeneralComplain WHERE LoginUsername='" + Session["user"] + "'";
            int generalcount = (int)cmd.ExecuteScalar();
            gc.Text = generalcount.ToString();
            cmd.ExecuteNonQuery();
            //missing person case counting
            cmd.CommandText = "SELECT COUNT(*) FROM MissingPerson  WHERE LoginUsername='" + Session["user"] + "'";
            int mpcount = (int)cmd.ExecuteScalar();
            mp.Text = mpcount.ToString();
            cmd.ExecuteNonQuery();
            //missing valuable case counting
            cmd.CommandText = "SELECT COUNT(*) FROM MissingValuable WHERE LoginUsername='" + Session["user"] + "'";
            int mvcount = (int)cmd.ExecuteScalar();
            mv.Text = mvcount.ToString();
            cmd.ExecuteNonQuery();
            //solved case counting
            cmd.CommandText = "SELECT COUNT(*) as pending_count FROM CrimeComplain WHERE status = 'pending' AND LoginUsername ='" + Session["user"] + "'";
            int s1 = (int)cmd.ExecuteScalar();
            cmd.CommandText = "SELECT COUNT(*) as pending_count FROM CrimeComplain WHERE status = 'solved' AND LoginUsername ='" + Session["user"] + "'";
            int s2 = (int)cmd.ExecuteScalar();
            cmd.CommandText = "SELECT COUNT(*) as pending_count FROM GeneralComplain WHERE status = 'pending' AND LoginUsername ='" + Session["user"] + "'";
            int s3 = (int)cmd.ExecuteScalar();
            cmd.CommandText = "SELECT COUNT(*) as pending_count FROM GeneralComplain WHERE status = 'solved' AND LoginUsername ='" + Session["user"] + "'";
            int s4 = (int)cmd.ExecuteScalar();
            cmd.CommandText = "SELECT COUNT(*) as pending_count FROM MissingPerson WHERE status = 'pending' AND LoginUsername ='" + Session["user"] + "'";
            int s5 = (int)cmd.ExecuteScalar();
            cmd.CommandText = "SELECT COUNT(*) as pending_count FROM MissingPerson WHERE status = 'solved' AND LoginUsername ='" + Session["user"] + "'";
            int s6 = (int)cmd.ExecuteScalar();
            cmd.CommandText = "SELECT COUNT(*) as pending_count FROM MissingValuable WHERE status = 'pending' AND LoginUsername ='" + Session["user"] + "'";
            int s7 = (int)cmd.ExecuteScalar();
            cmd.CommandText = "SELECT COUNT(*) as pending_count FROM MissingValuable WHERE status = 'solved' AND LoginUsername ='" + Session["user"] + "'";
            int s8 = (int)cmd.ExecuteScalar();
            solvedcc.Text = s1.ToString();
            pendingcc.Text = s2.ToString();            
            solvedgc.Text = s3.ToString();
            pendinggc.Text = s4.ToString();
            pendingmp.Text = s5.ToString();
            solvedmp.Text = s6.ToString();
            pendingmv.Text = s7.ToString();
            solvedmv.Text = s8.ToString();
            cmd.ExecuteNonQuery();
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}