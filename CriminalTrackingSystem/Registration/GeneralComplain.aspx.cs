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
            if (Session["user"] == null)
                Response.Redirect("~/Login.aspx");
            GCUserName.Text = Session["user"].ToString();
            cmd.Connection = con;
        }
        //insert button
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                cmd.CommandText = "INSERT INTO GeneralComplain VALUES('" + GCUserName.Text + "', '" + GCPoliceStation.SelectedValue + "', '" + GCTitle.Text + "', '" + GCDetails.Text + "', '" + GCInvolvedPersons.Text + "', '" + GCCurrentDate.Text + "', '" + "pending" + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('record inserted successfully !')</script>");
                con.Close();
                GridView1.DataBind();
                GCTitle.Text = "";
                GCDetails.Text = "";
                GCInvolvedPersons.Text = "";
                GCCurrentDate.Text = "";
            }
            catch (Exception)
            {
                Response.Redirect("../Error_message.aspx");
            }
        }
    }
}