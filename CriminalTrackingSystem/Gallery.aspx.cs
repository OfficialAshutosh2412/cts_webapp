using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CriminalTrackingSystem
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EventGallery.aspx");
        }
        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CriminalGallery.aspx");
        }
    }
}