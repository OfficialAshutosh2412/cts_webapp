using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace CriminalTrackingSystem.Registration
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("~/Login.aspx");

            cmd.Connection = con;
            con.Open();
            adp = new SqlDataAdapter("SELECT * FROM Registration WHERE Username='" + Session["user"] + "'", con);
            DataTable dtr = new DataTable();
            adp.Fill(dtr);
            Session["dtr"] = dtr;
            for (int i = 0; i < dtr.Rows.Count; i++)
            {
                id.Text = dtr.Rows[i]["RegId"].ToString();
                name.Text = dtr.Rows[i]["Username"].ToString();
                email.Text = dtr.Rows[i]["Email"].ToString();
                pin.Text = dtr.Rows[i]["Pincode"].ToString();
                sex.Text = dtr.Rows[i]["Gender"].ToString();
                address.Text = dtr.Rows[i]["Address"].ToString();
                ms.Text = dtr.Rows[i]["Mstatus"].ToString();
                ls.Text = dtr.Rows[i]["Lstatus"].ToString();
                adhaar.Text = dtr.Rows[i]["AdharNumber"].ToString();
                phone.Text = dtr.Rows[i]["ContactNumber"].ToString();
                string img =(string) dtr.Rows[i]["ProfilePhoto"];
                Image1.ImageUrl = "~/RegisterPhoto/"+ img.ToString();
            }
        }
    }
}