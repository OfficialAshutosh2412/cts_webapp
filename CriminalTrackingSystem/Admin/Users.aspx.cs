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
    public partial class Users : System.Web.UI.Page
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "--select--")
            {
                id.Text = "";
                name.Text ="";
                password.Text = "";
                email.Text = "";
                pin.Text = "";
                sex.Text = "";
                address.Text = "";
                ms.Text = "";
                ls.Text = "";
                adhaar.Text = "";
                phone.Text = "";
                //picture.Text = "";
            }
            else
            {
                con.Open();
                adp = new SqlDataAdapter("SELECT * FROM Registration WHERE Username='" + DropDownList1.SelectedValue + "'", con);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    id.Text = dt.Rows[i]["RegId"].ToString();
                    name.Text = dt.Rows[i]["Username"].ToString();
                    password.Text = dt.Rows[i]["Password"].ToString();
                    email.Text = dt.Rows[i]["Email"].ToString();
                    pin.Text = dt.Rows[i]["Pincode"].ToString();
                    sex.Text = dt.Rows[i]["Gender"].ToString();
                    address.Text = dt.Rows[i]["Address"].ToString();
                    ms.Text = dt.Rows[i]["Mstatus"].ToString();
                    ls.Text = dt.Rows[i]["Lstatus"].ToString();
                    adhaar.Text = dt.Rows[i]["AdharNumber"].ToString();
                    phone.Text = dt.Rows[i]["ContactNumber"].ToString();
                    string img = (string)dt.Rows[i]["ProfilePhoto"];
                    pics.ImageUrl = "/RegisterPhoto/"+img.ToString();
                }
            }
        }
    }
}