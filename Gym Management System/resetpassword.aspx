<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resetpassword.aspx.cs" Inherits="Gym_Management_System.resetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
     <style>
        body {
            background-color: #f8f9fa; /* Light gray background color */
            font-family: Arial, sans-serif; /* Use Arial font */
        }

        .container {
            max-width: 400px; /* Set maximum width for better readability */
            margin: 50px auto; /* Center the container horizontally */
            padding: 20px; /* Add padding to the container */
            background-color: #ffffff; /* White background color */
            border-radius: 8px; /* Add rounded corners */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add shadow for depth */
        }

        h2 {
            color: #007bff; /* Blue header text color */
            text-align: center; /* Center align the header */
            margin-bottom: 20px; /* Add some space below the header */
        }

        label {
            font-weight: bold; /* Make labels bold */
            color: #343a40; /* Dark text color */
        }

        .form-control {
            width: 100%; /* Full width textboxes */
            padding: 10px; /* Add padding inside textboxes */
            margin-bottom: 15px; /* Add space below textboxes */
            border: 1px solid #ced4da; /* Gray border */
            border-radius: 5px; /* Add rounded corners to textboxes */
            box-sizing: border-box; /* Include padding and border in the width */
        }

        .btn-primary {
            width: 100%; /* Full width button */
            padding: 10px; /* Add padding inside the button */
            background-color: #007bff; /* Blue button color */
            border: none; /* Remove button border */
            border-radius: 5px; /* Add rounded corners to button */
            color: #ffffff; /* White text color */
            cursor: pointer; /* Change cursor to pointer on hover */
            transition: background-color 0.3s; /* Smooth transition for background color */
        }

        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue color on hover */
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
        <div class="container">
            <h2>Reset Password</h2>
            <div class="form-group">

                <label for="Email">Enter Email:</label>
    <asp:TextBox ID="Email" runat="server" TextMode="email" CssClass="form-control"></asp:TextBox>


                <label for="PasswordTxt">New Password:</label>
                <asp:TextBox ID="PasswordTxt" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="ConfirmPasswordTxt">Confirm Password:</label>
                <asp:TextBox ID="ConfirmPasswordTxt" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" CssClass="btn btn-primary" />
        </div>
    </form>
</body>
</html>
