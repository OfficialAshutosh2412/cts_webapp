using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CriminalTrackingSystem
{
    public partial class News : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = con;
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (DropDownList1.SelectedValue == "-select title-")
                {
                    id.Text = "";
                    title.Text = "";
                    detail.Text = "";
                    date.Text = "";
                }
                else
                {
                    adp = new SqlDataAdapter("SELECT * FROM News WHERE Ntitle='" + DropDownList1.SelectedValue + "'", con);
                    DataTable dt = new DataTable();
                    adp.Fill(dt);
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        id.Text = dt.Rows[i]["Nid"].ToString();
                        title.Text = dt.Rows[i]["Ntitle"].ToString();
                        detail.Text = dt.Rows[i]["Ndata"].ToString();
                        date.Text = dt.Rows[i]["Ndate"].ToString();
                    }
                }
            }catch(Exception)
            {
                Response.Redirect("Error_message.aspx");
            }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (DropDownList4.SelectedValue == "-select date-")
                {
                    id.Text = "";
                    title.Text = "";
                    detail.Text = "";
                    date.Text = "";
                }
                else
                {
                    adp = new SqlDataAdapter("SELECT * FROM News WHERE Ndate='" + DropDownList4.SelectedValue + "'", con);
                    DataTable dt = new DataTable();
                    adp.Fill(dt);
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        id.Text = dt.Rows[i]["Nid"].ToString();
                        title.Text = dt.Rows[i]["Ntitle"].ToString();
                        detail.Text = dt.Rows[i]["Ndata"].ToString();
                        date.Text = dt.Rows[i]["Ndate"].ToString();
                    }
                }
            }
            catch(Exception)
            {
                Response.Redirect("Error_message.aspx");
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (DropDownList3.SelectedValue == "-select id-")
                {
                    id.Text = "";
                    title.Text = "";
                    detail.Text = "";
                    date.Text = "";
                }
                else
                {
                    adp = new SqlDataAdapter("SELECT * FROM News WHERE Nid='" + DropDownList3.SelectedValue + "'", con);
                    DataTable dt = new DataTable();
                    adp.Fill(dt);
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        id.Text = dt.Rows[i]["Nid"].ToString();
                        title.Text = dt.Rows[i]["Ntitle"].ToString();
                        detail.Text = dt.Rows[i]["Ndata"].ToString();
                        date.Text = dt.Rows[i]["Ndate"].ToString();
                    }
                }
            }
            catch(Exception) { 
                Response.Redirect("Error_message.aspx");
            }
        }
    }
}