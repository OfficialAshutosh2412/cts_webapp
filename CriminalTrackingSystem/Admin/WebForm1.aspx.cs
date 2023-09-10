using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace CriminalTrackingSystem.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = con;       
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            
            if (FileUpload1.HasFiles)
            {
                foreach (HttpPostedFile f in FileUpload1.PostedFiles)
                {
                    string imgpath = "/demo/" + f.FileName;
                    cmd.CommandText = "insert into demodb values('" + f.FileName + "')";
                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        f.SaveAs(Path.Combine(Server.MapPath("/demo/"), f.FileName));
                    }
                }
                Response.Write("<script>alert('images uploaded !')</script>");
            }
            else
                Response.Write("<script>alert('no image selected')</script>");


        }
    }
}