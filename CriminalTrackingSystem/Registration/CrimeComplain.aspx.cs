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
    public partial class CrimeComplain : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            Timer1.Enabled = true;
            if (Session["user"] == null)
                Response.Redirect("~/Login.aspx");
            UserName.Text = Session["user"].ToString();
            cmd.Connection = con;
        }
        //insert button
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                FileUpload1.SaveAs(Server.MapPath("AnyProof") + "/" + FileUpload1.FileName);
                Literal1.Text = "AnyProof" + "/" + FileUpload1.FileName;
                cmd.CommandText = "INSERT INTO CrimeComplain VALUES('" + UserName.Text + "', '" + PoliceStation.SelectedValue + "', '" + CrimeType.SelectedValue + "', '" + InvolvedPerson.Text + "', '" + FileUpload1.FileName + "', '" + CrimeStation.Text + "', '" + CrimeDate.Text + "', '" + CurrentDate.Text + "', '" + "pending" + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('record inserted successfully !')</script>");
                con.Close();
                GridView1.DataBind();
                InvolvedPerson.Text = "";
                CrimeStation.Text = "";
                CrimeDate.Text = "";
                CurrentDate.Text = "";
            }
            catch (Exception)
            {
                Response.Redirect("../Error_message.aspx");
            }
        }
        //timer
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString("hh:mm:ss tt dddd ,  dd MMMM yyyy ");
        }
    }
}