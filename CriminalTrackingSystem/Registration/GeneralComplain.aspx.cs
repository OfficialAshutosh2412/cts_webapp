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
            cmd.Connection = con;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString("hh:mm:ss tt dddd ,  dd MMMM yyyy ");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var name = GCUserName.Text;
            var ps = GCPoliceStation.Text;
            var title = GCTitle.Text;
            var details = GCDetails.Text;
            var ip = GCInvolvedPersons.Text;
            var cd = GCCurrentDate.Text;
            var status = GCCrimeStatus.Text;
            if ((name == "") || (ps == "") || (title == "") || (details == "") || (ip == "") || (cd == "") || (status == ""))
            {
                Response.Write("<script>alert('fields are empty, fill them first !');</script>");
                
            }
            else
            {
                Label2.Text = "okay";
            }
        }
    }
}