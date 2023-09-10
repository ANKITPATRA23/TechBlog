<%-- 
    Document   : Contact
    Created on : 03-Sep-2023, 4:00:28 pm
    Author     : ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><!-- comment -->
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(20% 0%, 80% 0%, 100% 0, 100% 80%, 80% 100%, 20% 100%, 0% 80%, 0 0);
            }
        </style>
    </head>
    <body>
        <%@include file="normal_navbar.jsp"%>

        <main class="primary-background p-5 banner-background" style="padding-bottom: 50px;">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header primary-background text-white text-center">
                            <span class="fa fa-3x fa-user-circle"></span>
                            <p>Drop Your Queries!!</p>
                        </div>
                        <div class="card-body">
                            <form action="Register" method="POST" id ="reg_form">

                                <div class="form-group">
                                    <label for="first_name">Name:</label>
                                    <input type="text" name="user_name"class="form-control" id="first_name" aria-describedby="emailHelp" placeholder="Enter Name:" required>

                                </div>


                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address:</label>
                                    <input  name="user_email"type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>





                                <div class="form-group">
                                    <label for="subject">Subject:</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="text" id="subject" name="subject" required>
                                </div>

                                <div class="form-group">
                                    <label for="message">Message:</label>
                                    <textarea class="form-control"id="message" name="message" rows="5" placeholder="Enter your Entire Query Here...."required></textarea>
                                </div>
                                <div class="text-center">
                                     <button  id="submit-btn"type="submit" class="btn btn-primary">Submit</button>
                                </div>
                                
                                   
                            </form>
                       

                    </div>
                </div>
            </div>

        </main>
    </body>
</html>
