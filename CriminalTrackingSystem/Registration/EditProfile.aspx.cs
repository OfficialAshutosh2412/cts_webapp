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
    public partial class EditProfile : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("~/Login.aspx");
            cmd.Connection = con;

            if (!IsPostBack)
            {
                con.Open();
                adp = new SqlDataAdapter("SELECT * FROM Registration WHERE Username='" + Session["user"] + "'", con);
                DataTable dtr = new DataTable();
                adp.Fill(dtr);
                Session["dtr"] = dtr;

                for (int i = 0; i < dtr.Rows.Count; i++)
                {
                    email.Text = dtr.Rows[i]["Email"].ToString();
                    pin.Text = dtr.Rows[i]["Pincode"].ToString();
                    gender.SelectedValue = dtr.Rows[i]["Gender"].ToString();
                    address.Text = dtr.Rows[i]["Address"].ToString();
                    ms.SelectedValue = dtr.Rows[i]["Mstatus"].ToString();
                    ls.SelectedValue = dtr.Rows[i]["Lstatus"].ToString();
                    adhaar.Text = dtr.Rows[i]["AdharNumber"].ToString();
                    phone.Text = dtr.Rows[i]["ContactNumber"].ToString();
                }
                con.Close();
            }
            
        }

        protected void Unnamed9_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                con.Open();
                FileUpload1.SaveAs(Server.MapPath("/RegisterPhoto") + "/" + FileUpload1.FileName);
                cmd.CommandText = "UPDATE Registration SET Pincode='" + pin.Text + "', Gender='" + gender.SelectedValue + "', Mstatus='" + ms.SelectedValue + "', Lstatus='" + ls.SelectedValue + "', Address='" + address.Text + "', AdharNumber='" + adhaar.Text + "', ContactNumber='" + phone.Text + "', Email='" + email.Text + "', ProfilePhoto='"+ FileUpload1.FileName+ "' WHERE Username='" + Session["user"] + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Profile.aspx");
            }
            else
            {
                con.Open();
                cmd.CommandText = "UPDATE Registration SET Pincode='" + pin.Text + "', Gender='" + gender.SelectedValue + "', Mstatus='" + ms.SelectedValue + "', Lstatus='" + ls.SelectedValue + "', Address='" + address.Text + "', AdharNumber='" + adhaar.Text + "', ContactNumber='" + phone.Text + "', Email='" + email.Text + "' WHERE Username='" + Session["user"] + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Profile.aspx");
            }
                
                
            
        }

    }
}