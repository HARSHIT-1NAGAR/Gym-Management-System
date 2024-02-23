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
    public partial class resetpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["ResetEmail"] as string))
            {
                Response.Write("<script>alert('Email not found. Please try again.')</script>");
                Response.Redirect("forgotpassword.aspx");
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string newPassword = PasswordTxt.Text.Trim();
            string confirmPassword = ConfirmPasswordTxt.Text.Trim();
            string enteredEmail = Session["ResetEmail"] as string; // Retrieve stored email from session

            if (newPassword != confirmPassword)
            {
                Response.Write("<script>alert('Passwords do not match. Please try again.')</script>");
                return;
            }

            // Update password in the database
            // string email = Session["ResetEmail"] as string;

            string connectionString = ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string updateQuery = "UPDATE login SET password = @Password WHERE Email = @Email";
                SqlCommand cmd = new SqlCommand(updateQuery, conn);
                cmd.Parameters.AddWithValue("@Password", newPassword);
                cmd.Parameters.AddWithValue("@Email", enteredEmail);

                try
                {
                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("<script>alert('Password changed successfully.')</script>");

                        Response.Redirect("login2.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Failed to update password. Please try again.')</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write($"<script>alert('Error updating password: {ex.Message}')</script>");
                }
            }

        }
    }
}
