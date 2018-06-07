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
    public partial class BloodRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text =Session["new"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var id = 11;

           

           
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();


            string sql = "select max(BloodReqID) from BloodRequest";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read(); // read first row
                id = rd.GetInt32(0);
                id = id + 1;
            }
            rd.Close();

            string insertQuery = "insert into BloodRequest (BloodReqId,BloodType,HospitalName,Date,District,CustomerEmail,Amount) values(@reqid,@bloodtype ,@hospitalname, @date,@district, @customermail,@bldamount)";
            //Response.Write("Connection Opened!!!");
            SqlCommand comm = new SqlCommand(insertQuery, conn);
            comm.Parameters.AddWithValue("@reqid", id);
            comm.Parameters.AddWithValue("@bloodtype", DropDownList1.SelectedItem.ToString());
            comm.Parameters.AddWithValue("@hospitalname", TextBox1.Text);
            comm.Parameters.AddWithValue("@date", TextBox2.Text);
            comm.Parameters.AddWithValue("@district", TextBox3.Text);
            comm.Parameters.AddWithValue("@customermail", Label1.Text);
            comm.Parameters.AddWithValue("@bldamount", TextBox4.Text);


            comm.ExecuteNonQuery();

          


            string insertQuery2 = "insert into RequestCheck (Id) values(@reqid)";
            //Response.Write("Connection Opened!!!");
            SqlCommand comm2 = new SqlCommand(insertQuery2, conn);
            comm2.Parameters.AddWithValue("@reqid", id);
            comm2.ExecuteNonQuery();


            conn.Close();

            id = id + 1;

            Response.Redirect("RequestResult.aspx"); 
          /*  try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into BloodRequest (BloodType,HospitalName,Date,District,CustomerEmail) values(@bloodtype ,@hospitalname, @date,@district, @customername)";
                //Response.Write("Connection Opened!!!");
                SqlCommand comm = new SqlCommand(insertQuery, conn);
                comm.Parameters.AddWithValue("@bloodtype", DropDownList1.SelectedItem.ToString());
                comm.Parameters.AddWithValue("@hospitalname", TextBox1.Text );
                comm.Parameters.AddWithValue("@date", TextBox2.Text);
                comm.Parameters.AddWithValue("@district", TextBox3.Text);
                comm.Parameters.AddWithValue("@customermail", Label1.Text);

                comm.ExecuteNonQuery();

                conn.Close();
                //Response.Redirect(".aspx");
                //Response.Write("Completed");
            }

            catch (Exception ex)
            {
                Response.Write("Problem");

            }*/

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}