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
            if (Session["user"] == null)
                Response.Redirect("~/Login.aspx");
            GCUserName.Text = Session["user"].ToString();
            cmd.Connection = con;
        }
        //timer
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString("hh:mm:ss tt dddd ,  dd MM yyyy ");
        }
        //insert button
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd.CommandText = "INSERT INTO GeneralComplain VALUES('" + GCUserName.Text + "', '" + GCPoliceStation.SelectedValue + "', '" + GCTitle.Text + "', '" + GCDetails.Text + "', '" + GCInvolvedPersons.Text + "', '" + GCCurrentDate.Text + "', '" + GCCrimeStatus.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('record inserted successfully !')</script>");
            con.Close();
            GridView1.DataBind();
            GCUserName.Text = "";
            GCTitle.Text = "";
            GCDetails.Text = "";
            GCInvolvedPersons.Text = "";
            GCCurrentDate.Text = "";
            GCCrimeStatus.Text = "";
        }
        ////select button
        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //    GCPoliceStation.SelectedValue = GridView1.SelectedRow.Cells[3].Text.ToString();
        //    GCTitle.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
        //    GCDetails.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
        //    GCInvolvedPersons.Text = GridView1.SelectedRow.Cells[6].Text.ToString();
        //    GCCurrentDate.Text = GridView1.SelectedRow.Cells[7].Text.ToString();
        //    GCCrimeStatus.Text = GridView1.SelectedRow.Cells[8].Text.ToString();
        //}
        ////update button 
        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    cmd.CommandText = "UPDATE GeneralComplain SET LoginUsername='" + GCUserName.Text + "', PoliceStation='" + GCPoliceStation.SelectedValue + "', Title='" + GCTitle.Text + "', Details='" + GCDetails.Text + "', InvolvePerson='" + GCInvolvedPersons.Text + "', Status='" + GCCrimeStatus.Text + "' WHERE CDT='" + GCCurrentDate.Text + "'";
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    GridView1.DataBind();
        //    Response.Write("<script>alert('record updatd successfully! ')</script>");
        //    GCUserName.Text = "";
        //    GCInvolvedPersons.Text = "";
        //    GCTitle.Text = "";
        //    GCDetails.Text = "";
        //    GCCurrentDate.Text = "";
        //    GCCrimeStatus.Text = "";
        //}

        ////delete button
        //protected void Button4_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    cmd.CommandText = "DELETE FROM GeneralComplain WHERE CDT='" + GCCurrentDate.Text + "'";
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    GridView1.DataBind();
        //    Response.Write("<script>alert('record deletd successfully! ')</script>");
        //    GCUserName.Text = "";
        //    GCInvolvedPersons.Text = "";
        //    GCTitle.Text = "";
        //    GCDetails.Text = "";
        //    GCCurrentDate.Text = "";
        //    GCCrimeStatus.Text = "";
        //}
    }
}