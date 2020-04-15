<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="TP_DatingSite.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Bootstrap Elegant Account Login Form with Avatar Icon</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        body {
            color: #999;
            background: #19aa8d;
            font-family: 'Varela Round', sans-serif;
        }

        .form-control {
            box-shadow: none;
            border-color: #ddd;
        }

            .form-control:focus {
                border-color: #4aba70;
            }

        .login-form {
            width: 350px;
            margin: 0 auto;
            padding: 30px 0;
        }

            .login-form form {
                color: #434343;
                border-radius: 1px;
                margin-bottom: 15px;
                background: #fff;
                border: 1px solid #f3f3f3;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }

            .login-form h4 {
                text-align: center;
                font-size: 22px;
                margin-bottom: 20px;
            }

            .login-form .avatar {
                color: #fff;
                margin: 0 auto 30px;
                text-align: center;
                width: 100px;
                height: 100px;
                border-radius: 50%;
                z-index: 9;
                background: #4aba70;
                padding: 15px;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
            }

                .login-form .avatar i {
                    font-size: 62px;
                }

            .login-form .form-group {
                margin-bottom: 20px;
            }

            .login-form .form-control, .login-form .btn {
                min-height: 40px;
                border-radius: 2px;
                transition: all 0.5s;
            }

            .login-form .close {
                position: absolute;
                top: 15px;
                right: 15px;
            }

            .login-form .btn {
                background: #19aa8d; /* #4aba70*/
                border: none;
                line-height: normal;
            }

                .login-form .btn:hover, .login-form .btn:focus {
                    background: #42ae68;
                }

            .login-form .checkbox-inline {
                float: left;
            }

            .login-form input[type="checkbox"] {
                margin-top: 2px;
            }

            .login-form .forgot-link {
                float: right;
            }
            
            .login-form .small {
                font-size: 13px;
            }

            .login-form a {
                color: #4aba70;
            }
    </style>
</head>
<body>

    <div class="login-form">
        <form id="logInForm" runat="server">

            <div class="avatar"><i class="material-icons">&#xE7FF;</i></div>
            <h4 class="modal-title">Login to Your Account</h4>
            <div class="text-center"><asp:Label ID="lbl_ErrorLogIn" runat="server" Text="" style="color:darkred"></asp:Label></div>
            <div class="form-group">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter a User Name" ControlToValidate="txt_Username" style="color: darkred"></asp:RequiredFieldValidator>
                <asp:TextBox CssClass="form-control" runat="server" ID="txt_Username" placeholder="Username"></asp:TextBox>
                <%--<input type="text" class="form-control" placeholder="Username" required="required">--%>
            </div>
            <div class="form-group">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter a valid Password" ControlToValidate="txt_Password" style="color: darkred"></asp:RequiredFieldValidator>
                <asp:TextBox CssClass="form-control" runat="server" ID="txt_Password" placeholder="Password"></asp:TextBox>
                <%--<input type="password" class="form-control" placeholder="Password" required="required">--%>
            </div>
            <div class="form-group small clearfix">
                <asp:CheckBox CssClass="checkbox-inline" ID="cbx_Remember" runat="server" text="Remember me"/>
                <a href="#" class="forgot-link">Forgot Password?</a>
            </div>
            <asp:Button CssClass="btn btn-primary btn-block btn-lg" ID="btn_LogIn" runat="server" Text="Log In" OnClick="btn_LogIn_Click" />
            <%--<input type="submit" class="btn btn-primary btn-block btn-lg" value="Login">--%>
            <div class="text-center small">Don't have an account? <a href="#">Sign up</a></div>
        </form>
    </div>
</body>

</html>
