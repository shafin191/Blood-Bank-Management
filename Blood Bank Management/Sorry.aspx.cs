using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Bank_Management
{
    public partial class Sorry : System.Web.UI.Page
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
    }
}