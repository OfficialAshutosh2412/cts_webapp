﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CriminalTrackingSystem
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = DynamicConnection.GetsConnection();
        SqlDataAdapter adp = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        SqlDataReader dtr;
        protected void Page_Load(object sender, EventArgs e)
        {
            cmd.Connection = con;
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/02_07_2023-gorakhpur_aiims_police_station_23458982.jpg");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/14_04_2022-14azm_20_14042022_252-c-1.5_22627032_163740.jpg");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/17_06_2021-16alr_12_16062021_499-c-1.5_21744534_11139.jpg");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/3549634286_882d3c48f9_b.jpg");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/4_1614768752.jpg");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/AD1.jpg");
        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/AD2.jpg");
        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/AD3...jpg");
        }

        protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/AD4.jpg");
        }

        protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/AD5.jpg");
        }

        protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/AD6.jpg");
        }

        protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/ANI-20221002010026.jpg");
        }

        protected void ImageButton13_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/b80eae0e-dcf4-45a5-90bc-ed57f03ebea71649490885320_1649500857.jpg");
        }

        protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/bhatta-basti-rape-case-jaipur_1616044293.jpg");
        }

        protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/chitrakoot-2.png");
        }

        protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/Fru8lECaEAE3I-O.png");
        }

        protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/H_202002251149133980.jpg");
        }

        protected void ImageButton18_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/Hata.jpeg");
        }

        protected void ImageButton19_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/Lucknow-Police.png");
        }

        protected void ImageButton20_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/Police-Station-district-Aligarh.jpg");
        }

        protected void ImageButton21_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/police station_0.jpg.jpeg");
        }

        protected void ImageButton22_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/up-police-3-1200x700.jpg");
        }

        protected void ImageButton23_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/uuu_1646034261.jpg");
        }

        protected void ImageButton24_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/whatsapp-image-2022-05-05-at-24_1651854871.jpg");
        }

        protected void ImageButton25_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/dist/img/whatsapp-image-2022-10-16-at-083029_1665903787.jpg");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("SELECT * FROM Login WHERE Username='" + LoginName.Text + "' and Password='" + LoginPassword.Text + "'", con);
            dtr = cmd.ExecuteReader();
            if (dtr.Read())
            {
                if (dtr[2].ToString() == "user")
                {
                    Session["user"] = LoginName.Text;
                    Response.Redirect("~/Registration/RegisterHome.aspx");
                }
                else if (dtr[2].ToString() == "admin")
                {
                    Session["user"] = LoginName.Text;
                    Response.Redirect("~/Admin/AdminHome.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('invalid username and password')</script>");
            }

        }
        protected void ContactBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd.CommandText = "INSERT INTO Contact VALUES('" + ContactName.Text + "', '" + ContactEmail.Text + "', '" + ContactNumber.Text + "', '" + ContactPurpose.Text + "', '" + ContactDetails.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Thank you for contacting us. We will answer you ASAP...')</script>");
            con.Close();
            ContactName.Text = "";
            ContactEmail.Text = "";
            ContactNumber.Text = "";
            ContactPurpose.Text = "";
            ContactDetails.Text = "";
        }
        protected void FAQButton1_Click(object sender, EventArgs e)
        {

            con.Open();
            cmd.CommandText = "INSERT INTO Faq VALUES('" + question.Text + "', '" + "null" + "')";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Thank you, we heared you !')</script>");
            con.Close();
            question.Text = "";

        }
    }
}