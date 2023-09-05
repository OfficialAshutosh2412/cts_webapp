using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CriminalTrackingSystem.Admin
{
    public partial class PoliceStation : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = con;
        }

        protected void Unnamed8_Click(object sender, EventArgs e)
        {
            con.Open();
            FileUpload1.SaveAs(Server.MapPath("Police")+"/"+FileUpload1.FileName);
            cmd.CommandText = "INSERT INTO PoliceStation VALUES('"+chowki.Text+"', '"+name.Text+"',"+cugone.Text+","+cugtwo.Text+",'"+agentname.Text+"',"+agentnumber.Text+",'"+FileUpload1.FileName+"')";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('record stored successfully !')</script>");
            chowki.Text = "";
            name.Text = "";
            cugone.Text = "";
            cugtwo.Text = "";
            agentname.Text = "";
            agentnumber.Text = "";
        }
    }
}