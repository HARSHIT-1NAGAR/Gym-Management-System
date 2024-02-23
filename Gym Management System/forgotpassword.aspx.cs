using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace Gym_Management_System
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static string email;
        protected void SendOTPButton_Click(object sender, EventArgs e)
        {
            email = EmailTextBox.Text.Trim();
            string otp = GenerateOTP();

            // Store the OTP in session for verification
            Session["OTP"] = otp;
            

            // Send OTP to the user's email
            SendEmail(email, otp);
        }



        protected void VerifyOTPButton_Click(object sender, EventArgs e)
        {
            string enteredOTP = OTPTxt.Text.Trim();
            string storedOTP = Session["OTP"] as string;

            if (enteredOTP == storedOTP)
            {
                Session["ResetEmail"] = email; // Store the user's email for password reset
                // OTP verification successful, redirect to reset password page
                Response.Redirect("resetpassword.aspx");
            }
            else
            {
                // OTP verification failed
                Response.Write("<script>alert('Invalid OTP. Please try again.')</script>");
            }
        }



        private string GenerateOTP()
        {
            // Generate a random 6-digit OTP
            Random random = new Random();
            return random.Next(100000, 999999).ToString();
        }

        private void SendEmail(string toEmail, string otp)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("harshitnagar1806@gmail.com"); // Sender's/my email address
                mail.To.Add(toEmail);
                mail.Subject = "Password Reset OTP";
                mail.Body = $"Your OTP for password reset is: {otp}";

                SmtpClient smtp = new SmtpClient("smtp.gmail.com"); // SMTP server address (e.g., Gmail SMTP)
                smtp.Port = 587;
                smtp.Credentials = new NetworkCredential("harshitnagar1806@gmail.com", "hezf npgl kvwc zbnq\r\n"); // Sender's email credentials
                smtp.EnableSsl = true;
                smtp.Send(mail);

                // Display success message or redirect to OTP verification page
                Response.Write("<script>alert('OTP sent to your email.')</script>");
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Error sending email: {ex.Message}')</script>");
            }
        }































    }
}