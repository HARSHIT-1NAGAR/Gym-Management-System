using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gym_Management_System
{
    public partial class login2 : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataAdapter sda;
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!Page.IsPostBack)
            {
                fnconnect();

               
            }

        }


            public void fnconnect()
        {
            try
            {
                string conStr = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
                conn = new SqlConnection(conStr);
                if (conn.State != System.Data.ConnectionState.Open)
                {
                    conn.Open();
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());

            }


        }






        protected void login_Click(object sender, EventArgs e)
        {
            fnconnect();

            string email = txtemail.Text.Trim();
            string password = txtpass.Text.Trim();


            string query = "SELECT * FROM login WHERE Email = @Email AND password = @Password";
            cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Password", txtpass.Text);

            object result = cmd.ExecuteScalar();

            if (result != null) // User exists
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('login Succesfull')</script>");

                // Store UserID in session
                Session["user"] = result.ToString();
                Session["user"] = email; // Store the user's email


                // Redirect to Dashboard page
                Response.Redirect("welcome.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(),"Scripts","<script>alert('login failed')</script>");
                
            }
        }






















    }



}



