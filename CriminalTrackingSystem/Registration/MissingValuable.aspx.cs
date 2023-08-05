using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CriminalTrackingSystem.Registration
{
    public partial class MissingValuable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Timer1.Enabled = true;
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString("hh:mm:ss tt dddd ,  dd MMMM yyyy ");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((MVUserName.Text == "") || (MVPoliceStation.Text == "") || (MVType.Text == "") || (MVCost.Text == "") || (MVSuspect.Text == "") || (FileUpload1.FileName == "") || (MVDetails.Text == "") || (MVCurrentDate.Text == "") || (MVStatus.Text == ""))
            {
                Response.Write("<script>alert('Error: Fields are empty!')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MVUserName.Text = "";
            MVPoliceStation.Text = "";
            MVType.Text = "";
            MVCost.Text = "";
            MVSuspect.Text = "";
            MVDetails.Text = "";
            MVCurrentDate.Text = "";
            MVStatus.Text = "";
        }

        
    }
}