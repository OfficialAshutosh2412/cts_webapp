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
            con.Open();
            FileUpload1.SaveAs(Server.MapPath("AnyProof") + "/" + FileUpload1.FileName);
            Literal1.Text = "AnyProof" + "/" + FileUpload1.FileName;
            cmd.CommandText = "INSERT INTO CrimeComplain VALUES('" + UserName.Text + "', '" + PoliceStation.Text + "', '" + CrimeType.SelectedValue + "', '" + InvolvedPerson.Text + "', '" + FileUpload1.FileName + "', '" + CrimeStation.Text + "', '" + CrimeDate.Text + "', '" + CurrentDate.Text + "', '" + CrimeStatus.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('record inserted successfully !')</script>");
            con.Close();
            GridView1.DataBind();
            UserName.Text = "";
            PoliceStation.Text = "";
            InvolvedPerson.Text = "";
            CrimeStation.Text = "";
            CrimeDate.Text = "";
            CurrentDate.Text = "";
            CrimeStatus.Text = "";
        }
        //timer
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString("hh:mm:ss tt dddd ,  dd MMMM yyyy ");
        }

        

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AnyProof/{0}");
        }

        //update button
        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            FileUpload1.SaveAs(Server.MapPath("AnyProof") + "/" + FileUpload1.FileName);
            Literal1.Text = "AnyProof" + "/" + FileUpload1.FileName;
            cmd.CommandText = "UPDATE CrimeComplain SET LoginUsername='" + UserName.Text + "', PoliceStation='" + PoliceStation.Text+"', CrimeType='"+CrimeType.Text+"', InvolvePerson='"+InvolvedPerson.Text+"', AnyProof='"+FileUpload1.FileName+"', CrimeStation='"+CrimeStation.Text+"', CDT='"+CurrentDate.Text+"', Status='"+CrimeStatus.Text+ "' WHERE CrimeDate='" + CrimeDate.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("<script>alert('record updated successfully !')</script>");
            UserName.Text = "";
            PoliceStation.Text = "";
            InvolvedPerson.Text = "";
            CrimeStation.Text = "";
            CrimeDate.Text = "";
            CurrentDate.Text = "";
            CrimeStatus.Text = "";
        }

        //delete btn
        protected void Button3_Click1(object sender, EventArgs e)
        {
            con.Open();
            cmd.CommandText = "DELETE FROM CrimeComplain WHERE CrimeDate='" + CrimeDate.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            Response.Write("<script>alert('record deleted successfully !')</script>");
            UserName.Text = "";
            PoliceStation.Text = "";
            InvolvedPerson.Text = "";
            CrimeStation.Text = "";
            CrimeDate.Text = "";
            CurrentDate.Text = "";
            CrimeStatus.Text = "";

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            PoliceStation.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
            CrimeType.SelectedValue = GridView1.SelectedRow.Cells[4].Text.ToString();
            InvolvedPerson.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
            CrimeStation.Text = GridView1.SelectedRow.Cells[6].Text.ToString();
            CrimeDate.Text = GridView1.SelectedRow.Cells[7].Text.ToString();
            CurrentDate.Text = GridView1.SelectedRow.Cells[8].Text.ToString();
            CrimeStatus.Text = GridView1.SelectedRow.Cells[9].Text.ToString();
            
        }
    }
}