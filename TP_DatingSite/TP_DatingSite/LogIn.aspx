<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="TP_DatingSite.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
            width: 273px;
        }
        .auto-style4 {
            width: 273px;
        }
        .auto-style5 {
            width: 196px;
        }
    </style>

</head>
<body>
<form id="logInForm" runat="server">
        <div class="auto-style1">
            <strong>Log In Page</strong></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">UserName:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtUserName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter a Valid User Name" ControlToValidate="txtUserName" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPassword" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter a Valid Password" ControlToValidate="txtPassword" style="color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnLogIn" runat="server" OnClick="btnLogIn_Click" Text="Log In" Width="87px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Btn_ForgotPassword" runat="server" OnClick="btnLogIn_Click" Text="Forgot Password" Width="87px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblLogin" runat="server" Text=" "></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>

</html>
