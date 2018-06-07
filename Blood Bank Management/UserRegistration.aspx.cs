using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Blood_Bank_Management
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string checkuser ="select count(*) from UserRegistration where UserMail='"+TextBoxEmail.Text+"'";
                //Response.Write("Connection Opened!!!");
                SqlCommand comm = new SqlCommand(checkuser,conn);
                int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("This Mail has already used for a user");


                }
                
                conn.Close();

            }

        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {

            //try
            
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into UserRegistration (UserName,UserMail,UserPassword,UserDOB,UserDistrict,UserAddress,UserPhone) values(@username ,@usermail, @userpassword,@userdob,@userdistrict,@useraddress,@userphone )";
                //Response.Write("Connection Opened!!!");
                SqlCommand comm = new SqlCommand(insertQuery, conn);
                comm.Parameters.AddWithValue("@username", TextBoxName.Text);
                comm.Parameters.AddWithValue("@usermail", TextBoxEmail.Text);
                comm.Parameters.AddWithValue("@userpassword", TextBoxCPassword.Text);
                comm.Parameters.AddWithValue("@userdob", DOB.Text);
                comm.Parameters.AddWithValue("@userdistrict", DropDownList1.SelectedItem.ToString());
                comm.Parameters.AddWithValue("@useraddress", TextBoxAddress.Text);
                comm.Parameters.AddWithValue("@userphone", TextBoxPhone.Text);

                comm.ExecuteNonQuery();

                conn.Close();
                Response.Redirect("RegistrationSuccess.aspx");
                //Response.Write("Completed");
            

          /*  catch (Exception ex)
            {
                Response.Write("This Mail is already registered");

            }
            */
            

           
           

        }
    }
}