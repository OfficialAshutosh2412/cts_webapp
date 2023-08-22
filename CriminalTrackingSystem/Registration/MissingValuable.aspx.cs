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

            con.Open();
            FileUpload1.SaveAs(Server.MapPath("MissingValuableRecipt") + "/" + FileUpload1.FileName);
            Literal1.Text = "MissingValuableRecipt" + "/" + FileUpload1.FileName;
            cmd.CommandText = "INSERT INTO MissingValuable VALUES('" + MVUserName.Text + "', '" + MVPoliceStation.Text + "', '" + MVType.SelectedValue + "', '" + MVCost.Text + "', '" + MVSuspect.Text + "', '" + FileUpload1.FileName + "', '" + MVDetails.Text + "', '" + MVCurrentDate.Text + "', '" + MVStatus.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('record inserted successfully !')</script>");
            con.Close();
            GridView1.DataBind();
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
        //update
        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            FileUpload1.SaveAs(Server.MapPath("MissingValuableRecipt") + "/" + FileUpload1.FileName);
            Literal1.Text = "MissingValuableRecipt" + "/" + FileUpload1.FileName;
            cmd.CommandText = "UPDATE MissingValuable SET LoginUsername='" + MVUserName.Text + "', PoliceStation='" + MVPoliceStation.Text + "', ValuableType='" + MVType.SelectedValue + "', ValuableCost='" + MVCost.Text + "', AnySuspect='" + MVSuspect.Text + "', ValuablePurchaseRecipt='" + FileUpload1.FileName + "', Details='" + MVDetails.Text + "', Status='" + MVStatus.Text + "' WHERE CDT='" + MVCurrentDate.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('record updated successfully !')</script>");
            con.Close();
            GridView1.DataBind();
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

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            con.Open();
            cmd.CommandText = "DELETE FROM MissingValuable WHERE CDT='" + MVCurrentDate.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('record deleted successfully !')</script>");
            con.Close();
            GridView1.DataBind();
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
        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MVPoliceStation.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
            MVType.SelectedValue = GridView1.SelectedRow.Cells[4].Text.ToString();
            MVCost.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
            MVSuspect.Text = GridView1.SelectedRow.Cells[6].Text.ToString();
            MVDetails.Text = GridView1.SelectedRow.Cells[7].Text.ToString();
            MVCurrentDate.Text = GridView1.SelectedRow.Cells[8].Text.ToString();
            MVStatus.Text = GridView1.SelectedRow.Cells[9].Text.ToString();
        }
    }
}