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
            UserName.Text = Session["user"].ToString();
            cmd.Connection = con;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            FileUpload1.SaveAs(Server.MapPath("AnyProof") + "/" + FileUpload1.FileName);
            Literal1.Text = "AnyProof" + "/" + FileUpload1.FileName;
            cmd.CommandText = "INSERT INTO CrimeComplain VALUES('" + UserName.Text + "', '" + PoliceStation.Text + "', '" + CrimeType.SelectedValue + "', '" + InvolvedPerson.Text + "', '" + FileUpload1.FileName + "', '" + CrimeStation.Text + "', '" + CrimeDate.Text + "', '" + CurrentDate.Text + "', '" + CrimeStatus.Text + "')";
            cmd.ExecuteNonQuery();
            Label2.Text = "We listened you !";
            con.Close();
            UserName.Text = "";
            PoliceStation.Text = "";
            InvolvedPerson.Text = "";
            CrimeStation.Text = "";
            CrimeDate.Text = "";
            CurrentDate.Text = "";
            CrimeStatus.Text = "";
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString("hh:mm:ss tt dddd ,  dd MMMM yyyy ");
        }
    }
}