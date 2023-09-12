using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CriminalTrackingSystem
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = con;
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Gallery.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Gallery.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Gallery.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Gallery.aspx");
        }

       
        
        protected void ContactBtn_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText = "INSERT INTO Contact VALUES('" + ContactName.Text + "', '" + ContactEmail.Text + "', '" + ContactNumber.Text + "', '" + ContactPurpose.Text + "', '" + ContactDetails.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Thank you for contacting us. We will answer you ASAP...')</script>");
                con.Close();
                ContactName.Text = "";
                ContactEmail.Text = "";
                ContactNumber.Text = "";
                ContactPurpose.Text = "";
                ContactDetails.Text = "";
            }catch(Exception)
            {
                Response.Redirect("Error_message.aspx");
            }
        }
    }
}