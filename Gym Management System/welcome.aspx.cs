using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_Management_System
{
    public partial class welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"]!=null) {

                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Welcome')</script>");


                Response.Write("Welcome Admin"+Session["user"].ToString());
            
            }
        }
    }
}