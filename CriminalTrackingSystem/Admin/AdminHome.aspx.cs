﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CriminalTrackingSystem.Admin
{
    public partial class AdminHome : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["type"] == null)
                Response.Redirect("~/Login.aspx");
            adminName.Text = Session["type"].ToString();
            cmd.Connection = con;
            con.Open();
            //User counting
            cmd.CommandText = "SELECT COUNT(*) FROM Registration";
            int user = (int)cmd.ExecuteScalar();
            usercount.Text = user.ToString();
            cmd.ExecuteNonQuery();
            //crime complain counting
            cmd.CommandText = "SELECT COUNT(*) FROM CrimeComplain";
            int crimecount = (int)cmd.ExecuteScalar();
            cc.Text = crimecount.ToString();
            cmd.ExecuteNonQuery();
            //general complain counting
            cmd.CommandText = "SELECT COUNT(*) FROM GeneralComplain";
            int generalcount = (int)cmd.ExecuteScalar();
            gc.Text = generalcount.ToString();
            cmd.ExecuteNonQuery();
            //missing person case counting
            cmd.CommandText = "SELECT COUNT(*) FROM MissingPerson";
            int mpcount = (int)cmd.ExecuteScalar();
            mp.Text = mpcount.ToString();
            cmd.ExecuteNonQuery();
            //missing valuable case counting
            cmd.CommandText = "SELECT COUNT(*) FROM MissingValuable";
            int mvcount = (int)cmd.ExecuteScalar();
            mv.Text = mvcount.ToString();
            cmd.ExecuteNonQuery();
            //contact us counting
            cmd.CommandText = "SELECT COUNT(*) FROM Contact";
            int contcount = (int)cmd.ExecuteScalar();
            contact.Text = contcount.ToString();
            cmd.ExecuteNonQuery();
            //faq counting
            cmd.CommandText = "SELECT COUNT(*) FROM Faq";
            int faqcount = (int)cmd.ExecuteScalar();
            faq.Text = faqcount.ToString();
            cmd.ExecuteNonQuery();
            //gallery counting
            cmd.CommandText = "SELECT COUNT(*) FROM EventGallery";
            int eventcount = (int)cmd.ExecuteScalar();
            cmd.CommandText = "SELECT COUNT(*) FROM CriminalGallery";
            int criminalcount = (int)cmd.ExecuteScalar();
            int sum = eventcount + criminalcount;
            gallery.Text = sum.ToString();
            cmd.ExecuteNonQuery();
            //news counting
            cmd.CommandText = "SELECT COUNT(*) FROM News";
            int newscount = (int)cmd.ExecuteScalar();
            news.Text = newscount.ToString();
            cmd.ExecuteNonQuery();
            //pend case counting
            cmd.CommandText = "SELECT COUNT(*) FROM CrimeComplain WHERE Status='"+"pending"+"'";
            int p1 = (int)cmd.ExecuteScalar();
            cmd.CommandText = "SELECT COUNT(*) FROM GeneralComplain WHERE Status='" + "pending" + "'";
            int p2 = (int)cmd.ExecuteScalar();
            cmd.CommandText = "SELECT COUNT(*) FROM MissingPerson WHERE Status='" + "pending" + "'";
            int p3 = (int)cmd.ExecuteScalar();
            cmd.CommandText = "SELECT COUNT(*) FROM MissingValuable WHERE Status='" + "pending" + "'";
            int p4 = (int)cmd.ExecuteScalar();
            int p = p1 + p2 + p3 + p4;
            pendingstatus.Text = p.ToString();
            cmd.ExecuteNonQuery();
            //solved case counting
            cmd.CommandText = "SELECT COUNT(*) FROM CrimeComplain WHERE Status='" + "solved" + "'";
            int s1 = (int)cmd.ExecuteScalar();
            cmd.CommandText = "SELECT COUNT(*) FROM GeneralComplain WHERE Status='" + "solved" + "'";
            int s2 = (int)cmd.ExecuteScalar();
            cmd.CommandText = "SELECT COUNT(*) FROM MissingPerson WHERE Status='" + "solved" + "'";
            int s3 = (int)cmd.ExecuteScalar();
            cmd.CommandText = "SELECT COUNT(*) FROM MissingValuable WHERE Status='" + "solved" + "'";
            int s4 = (int)cmd.ExecuteScalar();
            int s = s1 + s2 + s3 + s4;
            solvedcases.Text = s.ToString();
            cmd.ExecuteNonQuery();
        }
    }
}