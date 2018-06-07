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
    public partial class AdminView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {
               Label1.Text = Session["new"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }



        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["new"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string bldt = DropDownList1.SelectedItem.ToString();
            string no = DropDownList2.SelectedItem.ToString();
            int number = Int32.Parse(no);
            var valdate = 0;

            string sql11 = "select Amount from BloodAmount where BloodType='"+bldt+"'";
                SqlCommand cmd11 = new SqlCommand(sql11, conn);
            SqlDataReader rd11 = cmd11.ExecuteReader();
            if (rd11.HasRows)
            {
                rd11.Read(); // read first row
                valdate = rd11.GetInt32(0);
                //id = id + 1;
            }
            rd11.Close();

            if (valdate <= number)
            {
                Label2.Text = "We do not have sufficient amount of blood";
                Label3.Text = valdate.ToString();
            }
            else
            { Label2.Text = "We have sufficient amount of blood";
                Label3.Text = valdate.ToString();
            }
            conn.Close();

           

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string bldt = DropDownList1.SelectedItem.ToString();
            string no = DropDownList2.SelectedItem.ToString();
            int number = Int32.Parse(no);
            var valdate = 0;

            string sql11 = "select Amount from BloodAmount where BloodType='" + bldt + "'";

            //string sql11 = "update BloodAmount set Amount = where BloodType='" + bldt + "'";
            SqlCommand cmd11 = new SqlCommand(sql11, conn);
            SqlDataReader rd11 = cmd11.ExecuteReader();
            if (rd11.HasRows)
            {
                rd11.Read(); // read first row
                valdate = rd11.GetInt32(0);
                //id = id + 1;
            }
            rd11.Close();

            int total = valdate- number;

            string up = "update BloodAmount set Amount='"+total+"' where BloodType='"+bldt+"'";
            SqlCommand cmu = new SqlCommand(up, conn);
            cmu.ExecuteNonQuery();
        }
    }
    }
