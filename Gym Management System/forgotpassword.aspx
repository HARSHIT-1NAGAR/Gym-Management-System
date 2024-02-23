<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="Gym_Management_System.forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        body {
            background: linear-gradient(120deg, #2980b9, #6dd5fa); /* Gradient background */
            font-family: Arial, sans-serif; /* Use Arial font */
            color: #fff; /* White text color */
        }

        .container {
            max-width: 400px; /* Set maximum width for better readability */
            margin: 50px auto; /* Center the container horizontally */
            padding: 20px; /* Add padding to the container */
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            border-radius: 8px; /* Add rounded corners */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Add shadow for depth */
        }

        h2 {
            text-align: center; /* Center align the header */
            margin-bottom: 20px; /* Add some space below the header */
            color:indianred;
        }

        label {
            font-weight: bold; /* Make labels bold */
            color: #333; /* Dark text color */
        }

        .form-control {
            width: 100%; /* Full width textboxes */
            padding: 10px; /* Add padding inside textboxes */
            margin-bottom: 15px; /* Add space below textboxes */
            border: none; /* Remove border */
            border-radius: 5px; /* Add rounded corners to textboxes */
            box-sizing: border-box; /* Include padding and border in the width */
        }

        .btn-primary {
            width: 100%; /* Full width button */
            padding: 10px; /* Add padding inside the button */
            background-color: #2980b9; /* Blue button color */
            border: none; /* Remove button border */
            border-radius: 5px; /* Add rounded corners to button */
            color: #fff; /* White text color */
            cursor: pointer; /* Change cursor to pointer on hover */
            transition: background-color 0.3s; /* Smooth transition for background color */
        }
         .btn-primaryy {
     width: 100%; /* Full width button */
     padding: 10px; /* Add padding inside the button */
     background-color:yellowgreen; /* Blue button color */
     border: none; /* Remove button border */
     border-radius: 5px; /* Add rounded corners to button */
     color: #fff; /* White text color */
     cursor: pointer; /* Change cursor to pointer on hover */
     transition: background-color 0.3s; /* Smooth transition for background color */
 }
        .btn-primary:hover {
            background-color: #2579a9; /* Darker blue color on hover */
        }

        .text-danger {
            color: #dc3545; /* Red text color for danger messages */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Forgot Password</h2>
            <div id="otpEntry">
                <div class="form-group">
                    <label for="EmailTextBox">Enter your email:</label>
                    <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="OTPTxt">Enter OTP:</label>
                    <asp:TextBox ID="OTPTxt" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <asp:Button ID="SendOTPButton" runat="server" Text="Send OTP" OnClick="SendOTPButton_Click" CssClass="btn btn-primary" />
                <asp:Button ID="VerifyOTPButton" runat="server" Text="Verify OTP" OnClick="VerifyOTPButton_Click" CssClass="btn btn-primaryy" />
                <span id="timer" class="text-danger"></span>
            </div>
            <div id="timeoutMessage" style="display:none;">
                <p class="text-danger">Time limit exceeded. Please try again.</p>
            </div>
        </div>
    </form>
    <script>
        var countdown = 120; // Timer countdown in seconds
        var timer;

        function startTimer() {
            timer = setInterval(function () {
                countdown--;
                $('#timer').text(countdown);
                if (countdown <= 0) {
                    clearInterval(timer);
                    $('#otpEntry').hide(); // Hide OTP entry controls
                    $('#timeoutMessage').show(); // Show timeout message
                }
            }, 1000);
        }

        startTimer(); // Start the timer when the page loads
    </script>
</body>
</html>
