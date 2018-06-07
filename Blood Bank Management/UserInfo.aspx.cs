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
    public partial class UserInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name, mail, dist, add, phn, dob;
            if (Session["new"] != null)
            {
                Label1.Text = Session["new"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

            using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                var sql = "SELECT UserName, UserMail, UserDistrict, UserAddress, UserPhone,UserDOB from UserRegistration where UserMail=@na";
                connection.Open();
                using (var command = new SqlCommand(sql, connection))
                {
                    command.Parameters.AddWithValue("@na",Label1.Text);
                    using (var reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {


                            LabelName.Text = reader[0].ToString();
                            LabelMail.Text = reader[1].ToString();
                            LabelDist.Text = reader[2].ToString();
                            Labeladd.Text = reader[3].ToString();
                            Labelphn.Text = reader[4].ToString();
                            Labeldob.Text = reader[5].ToString();
                            
                        }
                        //LabelName.Text = name;
                    }
                }
            }

            //LabelName.Text = name;



            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //conn.Open();
            con.Open();
            //SqlCommand comm = new SqlCommand(insertQuery, conn);
            string query = " select UserName,BloodBank.District, BloodBank.DonationDate from UserRegistration,BloodBank where (UserRegistration.UserMail=BloodBank.DonorEmail and BloodBank.DonorEmail=@na) ";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@na", Label1.Text);
            cmd.CommandType = CommandType.Text;

            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }

        }
    }
}