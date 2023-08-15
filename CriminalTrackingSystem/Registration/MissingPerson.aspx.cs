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
    public partial class MissingPerson : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            Timer1.Enabled = true;
            MPUserName.Text = Session["user"].ToString();
            cmd.Connection = con;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label2.Text = DateTime.Now.ToString("hh:mm:ss tt dddd ,  dd MMMM yyyy ");
        }
        //insert
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            FileUpload1.SaveAs(Server.MapPath("MissingPerson") + "/" + FileUpload1.FileName);
            Literal1.Text = "MissingPerson" + "/" + FileUpload1.FileName;
            cmd.CommandText = "INSERT INTO MissingPerson VALUES('" + MPUserName.Text + "', '" + MPPoliceStation.Text + "', '" + MPname.Text + "', '" + MPcontact.Text + "', '" + MPemail.Text + "', '" + MPlocation.Text + "', '" + MPransom.Text + "', '" + MPdob.Text + "', '" + MPdetails.Text + "', '" + FileUpload1.FileName + "', '" + MPcurrentDate.Text + "', '" + MPstatus.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('record inserted successfully !')</script>");
            con.Close();
            GridView1.DataBind();
            MPUserName.Text = "";
            MPPoliceStation.Text = "";
            MPname.Text = "";
            MPcontact.Text = "";
            MPemail.Text = "";
            MPlocation.Text = "";
            MPransom.Text = "";
            MPdob.Text = "";
            MPdetails.Text = "";
            MPcurrentDate.Text = "";
            MPstatus.Text = "";
        }
        
        //update
       
        protected void Button3_Click1(object sender, EventArgs e)
        {
            con.Open();
            FileUpload1.SaveAs(Server.MapPath("MissingPerson") + "/" + FileUpload1.FileName);
            Literal1.Text = "MissingPerson" + "/" + FileUpload1.FileName;
            cmd.CommandText = "UPDATE MissingPerson SET LoginUsername='" + MPUserName.Text + "', PoliceStation='" + MPPoliceStation.Text + "', MPName='" + MPname.Text + "', MPCOntactNumber='" + MPcontact.Text + "', MPEmailId='" + MPemail.Text + "', LastViewLocation='" + MPlocation.Text + "', Ransom='" + MPransom.Text + "', Dob='" + MPdob.Text + "', Details='" + MPdetails.Text + "', LatestPhoto='" + FileUpload1.FileName + "', Status='" + MPstatus.Text + "' WHERE CDT='" + MPcurrentDate.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("<script>alert('record updated successfully !')</script>");
            MPUserName.Text = "";
            MPPoliceStation.Text = "";
            MPname.Text = "";
            MPcontact.Text = "";
            MPemail.Text = "";
            MPlocation.Text = "";
            MPransom.Text = "";
            MPdob.Text = "";
            MPdetails.Text = "";
            MPcurrentDate.Text = "";
            MPstatus.Text = "";
        }

        //grid view
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            MPPoliceStation.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
            MPname.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
            MPcontact.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
            MPemail.Text = GridView1.SelectedRow.Cells[6].Text.ToString();
            MPlocation.Text = GridView1.SelectedRow.Cells[7].Text.ToString();
            MPransom.Text = GridView1.SelectedRow.Cells[8].Text.ToString();
            MPdob.Text = GridView1.SelectedRow.Cells[9].Text.ToString();
            MPdetails.Text = GridView1.SelectedRow.Cells[10].Text.ToString();
            MPcurrentDate.Text = GridView1.SelectedRow.Cells[11].Text.ToString();
            MPstatus.Text = GridView1.SelectedRow.Cells[12].Text.ToString();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            con.Open();
            cmd.CommandText = "DELETE FROM MissingPerson WHERE CDT='" + MPcurrentDate.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("<script>alert('record deleted successfully !')</script>");
            MPUserName.Text = "";
            MPPoliceStation.Text = "";
            MPname.Text = "";
            MPcontact.Text = "";
            MPemail.Text = "";
            MPlocation.Text = "";
            MPransom.Text = "";
            MPdob.Text = "";
            MPdetails.Text = "";
            MPcurrentDate.Text = "";
            MPstatus.Text = "";
        }
    }
}