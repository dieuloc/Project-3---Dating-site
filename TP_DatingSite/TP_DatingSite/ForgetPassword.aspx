<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="TP_DatingSite.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" />
    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>--%>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style type="text/css">
        body {
            background: #19aa8d;
        }

        .forget-pwd > a {
            color: #dc3545;
            font-weight: 500;
        }

        .forget-password .panel-default {
            padding: 31%;
            margin-top: -27%;
        }

        .forget-password .panel-body {
            padding: 15%;
            margin-bottom: -50%;
            background: #fff;
            border-radius: 5px;
            -webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

        img {
            width: 40%;
            margin-bottom: 10%;
        }

        .btnForget {
            background: #c0392b;
            border: none;
        }

        .forget-password .dropdown {
            width: 100%;
            border: 1px solid #ced4da;
            border-radius: .25rem;
        }

            .forget-password .dropdown button {
                width: 100%;
            }

            .forget-password .dropdown ul {
                width: 100%;
            }
    </style>
</head>
<body>
    <div class="container forget-password">
        <div class="row">
            <div class="col-md-12 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                            <img src="https://i.ibb.co/rshckyB/car-key.png" alt="car-key" border="0"/>
                            <h2 class="text-center">Forgot Password?</h2>
                            <p>You can reset your password here.</p>
                            <form id="form1" runat="server" class="form">
                                <div class="form-group">
                                    <div class="input-group">
                                        <select class="form-control" id="sel1">
                                            <option selected="true" disabled="disabled">Please Select Security Question</option>
                                            <option>Which is your favorite movie?</option>
                                            <option>What is your pet's name?</option>
                                            <option>What is the name of your village?</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                        <input id="forgetAnswer" name="forgetAnswer" placeholder="Answer" class="form-control" type="text"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input name="btnForget" class="btn btn-lg btn-primary btn-block btnForget" value="Reset Password" type="submit"/>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
