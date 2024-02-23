<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login2.aspx.cs" Inherits="Gym_Management_System.login2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
   
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 3px solid #000000;
        }
        .auto-style2 {
            width: 160px;
        }
    </style>
   
</head>
<body>
     
    <form id="form1" runat="server">
        <table cellpadding="3" cellspacing="4" class="auto-style1">
            <tr>
                <td class="auto-style2">Email:</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td>
                    <asp:TextBox ID="txtpass" TextMode ="Password" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
 

            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                               <div class="mb-3 form-check">
    <input type="radio" class="form-radio-input" id="adminradio" name="user-role" />
    <label class="form-check-label" for="adminradio">Admin</label>
    <input type="radio" class="form-radio-input" id="recradio" name="user-role" />
    <label class="form-check-label" for="recradio">Receptionist</label>
</div>
         


                    <asp:Button ID="login" runat="server" BackColor="#33CC33" OnClick="login_Click" Text="Login" />
                    <asp:HyperLink ID="forgotPasswordLink" runat="server" NavigateUrl="forgotpassword.aspx" Text="Forgot Password?" />

        </td>
            </tr>
        </table>
    </form>
     
    </body>
</html>
