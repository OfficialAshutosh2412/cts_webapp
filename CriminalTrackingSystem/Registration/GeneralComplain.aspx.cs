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
    public partial class GeneralComplain : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            Timer1.Enabled = true;
            GCUserName.Text = Session["user"].ToString();
            cmd.Connection = con;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString("hh:mm:ss tt dddd ,  dd MMMM yyyy ");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if ((GCUserName.Text == "") || (GCPoliceStation.Text == "") || (GCTitle.Text == "") || (GCDetails.Text == "") || (GCInvolvedPersons.Text == "") || (GCCurrentDate.Text == "") || (GCCrimeStatus.Text == ""))
            {
                Response.Write("<script>alert('fields are empty, fill them first !');</script>");
            }
            else
            {
                con.Open();
                cmd.CommandText = "INSERT INTO GeneralComplain VALUES('" + GCUserName.Text + "', '" + GCPoliceStation.Text + "', '" + GCTitle.Text + "', '" + GCDetails.Text + "', '" + GCInvolvedPersons.Text + "', '" + GCCurrentDate.Text + "', '" + GCCrimeStatus.Text + "')";
                cmd.ExecuteNonQuery();
                Label2.Text = "We listened you !";
                con.Close();    
                GCUserName.Text = "";
                GCPoliceStation.Text = "";
                GCTitle.Text = "";
                GCDetails.Text = "";
                GCInvolvedPersons.Text = "";
                GCCurrentDate.Text = "";
                GCCrimeStatus.Text = "";
            }
        }
    }
}