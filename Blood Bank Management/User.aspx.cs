using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Bank_Management
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["new"] != null)
            {
                LabeluserMail.Text = Session["new"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            Session["new"] = null;
            Response.Redirect("Login.aspx");
        }



        protected void ButtonBloodReq_Click(object sender, EventArgs e)
        {
            Response.Redirect("BloodRequest.aspx");


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void ButtonBloodDonation_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

            var valdate = 121;
            string cnt = "select count(*) from BloodBank where DonorEmail='"+LabeluserMail.Text+"'";
            SqlCommand cmd5 = new SqlCommand(cnt, conn);
            string sql11 = "select min(datediff(day,DonationDate,getdate())) from BloodBank where DonorEmail='" + LabeluserMail.Text + "'";
            SqlCommand cmd11 = new SqlCommand(sql11, conn);
            int temp= Convert.ToInt32(cmd5.ExecuteScalar());

            if (temp>=1)
            {
                SqlDataReader rd11 = cmd11.ExecuteReader();
                if (rd11.HasRows)
                {
                    rd11.Read(); // read first row
                    valdate = rd11.GetInt32(0);
                    //id = id + 1;
                }
                rd11.Close();

                if (valdate <= 120)
                {
                    Response.Redirect("Sorry.aspx");
                }
                else
                { Response.Redirect("BloodDonation.aspx"); }
            }
            else
            { Response.Redirect("BloodDonation.aspx"); }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RequestResult.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserInfo.aspx");
        }
    }
}
