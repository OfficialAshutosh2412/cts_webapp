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
    public partial class Help : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("~/Login.aspx");
            cmd.Connection = con;
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (DropDownList1.SelectedValue == "select")
                {
                    id.Text = "";
                    detail.Text = "";
                }
                else
                {
                    adp = new SqlDataAdapter("SELECT * FROM Faq WHERE FaqId='" + DropDownList1.SelectedValue + "'", con);
                    DataTable dt = new DataTable();
                    adp.Fill(dt);
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        id.Text = dt.Rows[i]["FaqId"].ToString();
                        detail.Text = dt.Rows[i]["Answer"].ToString();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Error_message.aspx");
            }
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (DropDownList2.SelectedValue == "select")
                {
                    id.Text = "";
                    detail.Text = "";
                }
                else
                {
                    adp = new SqlDataAdapter("SELECT * FROM Faq WHERE Question='" + DropDownList2.SelectedValue + "'", con);
                    DataTable dt = new DataTable();
                    adp.Fill(dt);
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        id.Text = dt.Rows[i]["FaqId"].ToString();
                        detail.Text = dt.Rows[i]["Answer"].ToString();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("Error_message.aspx");
            }
        }
    }
}