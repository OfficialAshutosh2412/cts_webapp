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
            MVUserName.Text = Session["user"].ToString();
            cmd.Connection = con;
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString("hh:mm:ss tt dddd ,  dd MMMM yyyy ");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((MVUserName.Text == "") || (MVPoliceStation.Text == "") || (MVType.Text == "") || (MVCost.Text == "") || (MVSuspect.Text == "") || (FileUpload1.FileName == "") || (MVDetails.Text == "") || (MVCurrentDate.Text == "") || (MVStatus.Text == ""))
            {
                Response.Write("<script>alert('Error: Fields are empty!')</script>");
            }
            else
            {
                con.Open();
                FileUpload1.SaveAs(Server.MapPath("MissingValuableRecipt") + "/" + FileUpload1.FileName);
                Literal1.Text = "MissingValuableRecipt" + "/" + FileUpload1.FileName;
                cmd.CommandText = "INSERT INTO MissingValuable VALUES('" + MVUserName.Text + "', '" + MVPoliceStation.Text + "', '" + MVType.SelectedValue + "', '" + MVCost.Text + "', '" + MVSuspect.Text + "', '" + FileUpload1.FileName + "', '" + MVDetails.Text + "', '" + MVCurrentDate.Text + "', '" + MVStatus.Text + "')";
                cmd.ExecuteNonQuery();
                Label2.Text = "report send successfully !";
                con.Close();
                MVUserName.Text = "";
                MVPoliceStation.Text = "";
                MVType.Text = "";
                MVCost.Text = "";
                MVSuspect.Text = "";
                MVDetails.Text = "";
                MVCurrentDate.Text = "";
                MVStatus.Text = "";
                Literal1.Text = "";
            }
        }
    }
}