using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace CriminalTrackingSystem.Admin
{
    public partial class Admin_Gallery : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["type"] == null)
                Response.Redirect("~/Login.aspx");
            if (RadioButton1.Checked == true)
            {
                EventName.Visible = true;
                eventBtn.Visible = true;
                criminalName.Visible = false;
                AffectedOrganisation.Visible = false;
                Reward.Visible = false;
                Details.Visible = false;
                crimeBtn.Visible = false;
            }
            if (RadioButton2.Checked == true)
            {
                EventName.Visible = false;
                eventBtn.Visible = false;
                criminalName.Visible = true;
                AffectedOrganisation.Visible = true;
                Reward.Visible = true;
                Details.Visible = true;
                crimeBtn.Visible = true;
            }
            cmd.Connection = con;
        }

        protected void eventBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            string title = EventName.Text;
            if (FileUpload1.HasFiles)
            {
                foreach (HttpPostedFile f in FileUpload1.PostedFiles)
                {
                    cmd.CommandText = "INSERT INTO EventGallery VALUES('" + EventName.Text + "', '" + f.FileName + "')";
                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        f.SaveAs(Path.Combine(Server.MapPath("AdminGallery/Events/"), f.FileName));
                    }
                    EventName.Text = "";
                }
                Response.Write("<script>alert('images uploaded !')</script>");
            }
            else
                Response.Write("<script>alert('no image selected')</script>");

        }

        protected void crimeBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            FileUpload1.SaveAs(Server.MapPath("AdminGallery/Crimes") + "/" + FileUpload1.FileName);
            cmd.CommandText = "INSERT INTO CriminalGallery VALUES('" + criminalName.Text + "', '" +AffectedOrganisation.Text+ "', '"+Reward.Text+"', '"+FileUpload1.FileName+"', '"+Details.Text+"')";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('upload successfull !')</script>");
            criminalName.Text = "";
            AffectedOrganisation.Text = "";
            Reward.Text = "";
            Details.Text = "";
            
        }
    }
}