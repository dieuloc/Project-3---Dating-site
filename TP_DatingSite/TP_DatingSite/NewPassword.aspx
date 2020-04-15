<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewPassword.aspx.cs" Inherits="TP_DatingSite.NewPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title></title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style type="text/css">
        .pass_show {
            position: relative
        }

            .pass_show .ptxt {
                position: absolute;
                top: 50%;
                right: 10px;
                z-index: 1;
                color: #f36c01;
                margin-top: -10px;
                cursor: pointer;
                transition: .3s ease all;
            }

                .pass_show .ptxt:hover {
                    color: #333333;
                }

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
    </style>
</head>
<body>

    <div class="container forget-password">
        <div class="row">
            <%--<div class="col-sm-4">--%>
            <div class="col-md-12 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                            <form id="form1" runat="server" class="form">
                                <label>Current Password</label>
                                <div class="form-group pass_show">
                                    <input type="password" value="faisalkhan@123" class="form-control" placeholder="Current Password" />
                                </div>
                                <label>New Password</label>
                                <div class="form-group pass_show">
                                    <input type="password" value="faisal.khan@123" class="form-control" placeholder="New Password" />
                                </div>
                                <label>Confirm Password</label>
                                <div class="form-group pass_show">
                                    <input type="password" value="faisal.khan@123" class="form-control" placeholder="Confirm Password" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $('.pass_show').append('<span class="ptxt">Show</span>');
        });


        $(document).on('click', '.pass_show .ptxt', function () {

            $(this).text($(this).text() == "Show" ? "Hide" : "Show");

            $(this).prev().attr('type', function (index, attr) { return attr == 'password' ? 'text' : 'password'; });

        });
    </script>
</body>
</html>
