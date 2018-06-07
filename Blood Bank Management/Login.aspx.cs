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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int temp;


           

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from UserRegistration where UserMail='" + TextBoxLoginMail.Text + "'and UserPassword='"+TextBoxLoginPass.Text+"'";
            //string ab = "select count(*) from UserRegistration where UserMail='ab@gmail.com'";
            //Response.Write("Connection Opened!!!");
            SqlCommand comm = new SqlCommand(checkuser, conn);
            //SqlCommand comm = new SqlCommand(ab, conn);
            temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            if (TextBoxLoginMail.Text == "admin" && TextBoxLoginPass.Text == "admin")
            {

                temp = 2;

            }


            //comm.ExecuteNonQuery();
            if (temp == 1)
            {
                //Response.Redirect("User.aspx?Parameter=" + TextBoxLoginMail.Text);
                Response.Write("Logged in");
                Session["New"] = TextBoxLoginMail.Text;
                Response.Redirect("User.aspx");
                

            }
            else if(temp == 2)
            {
                Response.Write("Admin Logged in");
                Session["New"] = TextBoxLoginMail.Text;
                Response.Redirect("AdminView.aspx");



            }
            else
            {
                Response.Write("Wrong Information");
            }
                conn.Close();
            




            //conn.Close();

        }
    }
}
