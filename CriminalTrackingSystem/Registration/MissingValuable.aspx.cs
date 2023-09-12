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
    public partial class MissingValuable : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            Timer1.Enabled = true;
            if (Session["user"] == null)
                Response.Redirect("~/Login.aspx");
            MVUserName.Text = Session["user"].ToString();
            cmd.Connection = con;
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString("hh:mm:ss tt dddd ,  dd MMMM yyyy ");
        }
        //insert
        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();
                FileUpload1.SaveAs(Server.MapPath("MissingValuableRecipt") + "/" + FileUpload1.FileName);
                Literal1.Text = "MissingValuableRecipt" + "/" + FileUpload1.FileName;
                cmd.CommandText = "INSERT INTO MissingValuable VALUES('" + MVUserName.Text + "', '" + MVPoliceStation.SelectedValue + "', '" + MVType.SelectedValue + "', '" + MVCost.Text + "', '" + MVSuspect.Text + "', '" + FileUpload1.FileName + "', '" + MVDetails.Text + "', '" + MVCurrentDate.Text + "', '" + "pending" + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('record inserted successfully !')</script>");
                con.Close();
                GridView1.DataBind();
                MVType.Text = "";
                MVCost.Text = "";
                MVSuspect.Text = "";
                MVDetails.Text = "";
                MVCurrentDate.Text = "";
                Literal1.Text = "";
            }
            catch (Exception)
            {
                Response.Redirect("../Error_message.aspx");
            }

        }
    }
}