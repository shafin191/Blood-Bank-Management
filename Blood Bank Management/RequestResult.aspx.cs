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
    public partial class RequestResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {
                LabelUserMail.Text = Session["new"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }




            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //conn.Open();
            con.Open();
            //SqlCommand comm = new SqlCommand(insertQuery, conn);
            string query = "select BloodType,HospitalName,Date,Amount,District from BloodRequest,RequestCheck where (CustomerEmail=@na and RequestCheck.Status=@cnfrm and BloodRequest.BloodReqId=RequestCheck.Id)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@na", LabelUserMail.Text);
            cmd.Parameters.AddWithValue("@cnfrm", "Confirm");
            cmd.CommandType = CommandType.Text;

            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }


            string query1 = "select BloodType,HospitalName,Date,Amount,District from BloodRequest,RequestCheck where (CustomerEmail=@na and RequestCheck.Status=@cnfrm and BloodRequest.BloodReqId=RequestCheck.Id)";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@na", LabelUserMail.Text);
            cmd1.Parameters.AddWithValue("@cnfrm", "Pending");
            cmd1.CommandType = CommandType.Text;

            using (SqlDataReader dr = cmd1.ExecuteReader())
            {
                GridView2.DataSource = dr;
                GridView2.DataBind();
            }

            con.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("User.aspx");
        }
    }
}