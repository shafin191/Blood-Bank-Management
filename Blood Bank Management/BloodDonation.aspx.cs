using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Bank_Management
{
    public partial class BloodDonation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var valdate = 0;
            Label1.Text = Session["new"].ToString();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var id = 11;
            var val = 0;
            var valdate = 121;




            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

           
                string sql = "select max(DonationId) from BloodBank";
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    rd.Read(); // read first row
                    id = rd.GetInt32(0);
                    id = id + 1;
                }
                rd.Close();
                string bt = DropDownList1.SelectedItem.ToString();
                string insertQuery = "insert into BloodBank (DonationId,BloodType,DonationDate,District,DonorEmail) values(@reqid,@bloodtype,@date,@district,@customermail)";
                //Response.Write("Connection Opened!!!");
                SqlCommand comm = new SqlCommand(insertQuery, conn);
                comm.Parameters.AddWithValue("@reqid", id);
                comm.Parameters.AddWithValue("@bloodtype", DropDownList1.SelectedItem.ToString());
                comm.Parameters.AddWithValue("@date", TextBox3.Text);
                comm.Parameters.AddWithValue("@district", TextBox2.Text);
                comm.Parameters.AddWithValue("@customermail", Label1.Text);


                comm.ExecuteNonQuery();


                string sql2 = "select max(Amount) from BloodAmount where BloodType='" + bt + "'";
                SqlCommand cmd2 = new SqlCommand(sql2, conn);
                SqlDataReader rd1 = cmd2.ExecuteReader();
                if (rd1.HasRows)
                {
                    rd1.Read(); // read first row
                    val = rd1.GetInt32(0);
                    val = val + 1;
                }
                rd1.Close();

                string insertQuery2 = "Update BloodAmount Set Amount=@val where BloodType=@bloodtype";
                //Response.Write("Connection Opened!!!");
                SqlCommand comm36 = new SqlCommand(insertQuery2, conn);
                comm36.Parameters.AddWithValue("@val", val);
                comm36.Parameters.AddWithValue("@bloodtype", DropDownList1.SelectedItem.ToString());
                comm36.ExecuteNonQuery();

                conn.Close();

                id = id + 1;

            Response.Redirect("DonationComplete.aspx");

            }
        }
    }
