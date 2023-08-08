using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CriminalTrackingSystem.Registration
{
    public partial class MissingPerson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Timer1.Enabled = true;
            MPUserName.Text = Session["user"].ToString();

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label2.Text = DateTime.Now.ToString("hh:mm:ss tt dddd ,  dd MMMM yyyy ");
        }
    }
}