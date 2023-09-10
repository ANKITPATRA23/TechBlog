<%-- 
    Document   : Register
    Created on : 31-Aug-2023, 12:37:59 am
    Author     : ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><!-- comment -->
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(20% 0%, 80% 0%, 100% 0, 100% 80%, 80% 100%, 20% 100%, 0% 80%, 0 0);
            }
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="normal_navbar.jsp"%>
        <main class="primary-background p-5 banner-background" style="padding-bottom: 50px;">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header primary-background text-white text-center">
                            <span class="fa fa-3x fa-user-circle"></span>
                            <p>Register Here</p>
                        </div>
                        <div class="card-body">
                            <form action="Register" method="POST" id ="reg_form">

                                <div class="form-group">
                                    <label for="first_name">First name</label>
                                    <input type="text" name="user_first_name"class="form-control" id="first_name" aria-describedby="emailHelp" placeholder="Enter First Name" required>

                                </div>

                                <div class="form-group">
                                    <label for="last_name">Last name</label>
                                    <input type="text" name="user_last_name"class="form-control" id="last_name" aria-describedby="emailHelp" placeholder="Enter Last Name" required>

                                </div>


                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input  name="user_email"type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>





                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="user_password"class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>

                                <div class="form-group">
                                    <label for="gender">Gender</label><br>
                                    <input type="radio" id="male" name="gender" value="male">Male&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" id="female" name="gender" value="female">Female&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" id="other" name="gender" value="other">Other
                                </div>

                                <div class="form-group">
                                    <textarea name="about" class="form-control"  rows="5" placeholder="Enter something about you..."></textarea>


                                    </div>
                                    <div class="form-check">
                                        <input type="checkbox" name="check"class="form-check-input" id="exampleCheck1">
                                        <label class="form-check-label" for="exampleCheck1">Terms & Conditions</label>
                                    </div>
                                    <br>
                                    <div id ="loader"class="container text-center">
                                        <span class="fa fa-refresh fa-spin fa-2x"></span>
                                        <h4>Please Wait!!!</h4>
                                    </div>
                                    <button id="submit-btn"type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        

                    </div>
                </div>
            </div>

        </main>


        <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>

        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                console.log("Loaded....")

                $('#reg_form').on('submit', function (event) {
                    event.preventDefault();
                    let form = new FormData(this);

                    $("#submit-btn").hide();
                    $("#loader").show();

                    $.ajax({
                        url: "Register",
                        data: form,
                        type: 'POST',
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            if(data.trim() === 'done'){
                                swal("Registered Successfully....")
                                    .then((value) => {
                                        window.location="loginPage.jsp"
                                    });
                            }else{
                                swal(data);
                            }
                            

                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR);
                            $("#submit-btn").show();
                            $("#loader").hide();
                            
                             swal("Something went wrong...")
                                    .then((value) => {
                                        window.location="Register.jsp"
                                    });

                        },
                        processData: false,
                        contentType: false
                    });
                });
            });
        </script>

    </body>
</html>
