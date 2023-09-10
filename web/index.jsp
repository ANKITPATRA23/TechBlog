

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.tech.blog.helper.ConnectionProvider" %>
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
        <!--navbar-->
        <%@include file="normal_navbar.jsp"%>

        <!--Banner-->
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron primary-background text-white banner-background">
                <div class="container">
                    <h3 class="display-4">Welcome To TechBlog</h3>
                    <p>Join with us & Grow with us!!!!</p>    
                    <p><b>Code Poetry in Pixels:</b> Like a poet crafting verses, programmers weave elegant lines of code that translate human intention into digital form. These languages, both spoken and unspoken, enable the creation of digital landscapes that enrich our lives.</p>
                    <p><b>Diverse Tongues of Tech Magic:</b> Programming languages, diverse as languages spoken around the world, are the enchanting dialects of technology. Through them, developers conjure the extraordinary from the mundane, transforming ideas into software that shapes the future.</p>
                    <a href="Register.jsp"class="btn btn-outline-light btn-lg"><span class="fa fa-external-link"></span> Start! its Free</a>
                    <a href="loginPage.jsp"class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle-o fa-spin"></span> Login</a>
                </div>
            </div>
        </div>


        <div class="container">
            <div class="row mb-2">
                <div class="col-md-4">
                    <div class="card">
                        <!--<img class="card-img-top" src="..." >-->
                        <div class="card-body">
                            <h5 class="card-title">Java Programming Language</h5>
                            <p class="card-text">
                                Java is a versatile and widely used programming language known for its platform independence, making it suitable for diverse applications from web development to mobile app development.</p>
                            <a href="JavaPage.jsp" class="btn primary-background text-white">Read More..</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <!--<img class="card-img-top" src="..." >-->
                        <div class="card-body">
                            <h5 class="card-title">Python Programming Language</h5>
                            <p class="card-text">Python is a popular, high-level programming language celebrated for its simplicity and readability, making it an excellent choice for beginners and experienced developers alike.</p>
                            <a href="PythonPage.jsp" class="btn primary-background text-white">Read More..</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <!--<img class="card-img-top" src="..." >-->
                        <div class="card-body">
                            <h5 class="card-title">Web Technology</h5>Web technology refers to the collection of tools, languages, and protocols used to create and maintain websites and web applications, enabling the sharing of information and services over the internet.</p>
                            <a href="WebTechnology.jsp" class="btn primary-background text-white">Read More..</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <!--<img class="card-img-top" src="..." >-->
                        <div class="card-body">
                            <h5 class="card-title">Database Management System</h5>
                            <p class="card-text">A DBMS is software that facilitates the storage, organization, retrieval, and manipulation of data in a structured and efficient manner, enabling data management for applications and users.</p>
                            <a href="Database.jsp" class="btn primary-background text-white">Read More..</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <!--<img class="card-img-top" src="..." >-->
                        <div class="card-body">
                            <h5 class="card-title">Cloud Computing</h5>
                            <p class="card-text">Cloud computing is a technology that allows users to access and use computing resources like servers, storage, and software over the internet, providing scalability and flexibility for businesses and individuals.</p>
                            <a href="Cloud.jsp" class="btn primary-background text-white">Read More..</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <!--<img class="card-img-top" src="..." >-->
                        <div class="card-body">
                            <h5 class="card-title">Data Science</h5>
                            <p class="card-text">Data science is an interdisciplinary field that uses techniques from statistics, computer science, and domain knowledge to extract insights, patterns, and valuable information from large datasets.</p>
                            <a href="DataScience.jsp" class="btn primary-background text-white">Read More..</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <footer class="text-center">
        <p>&copy; 2023 TechBlog</p>
        <p>Contact: ankitpatra070@gmail.com</p>
       
    </footer>






        <%
            Connection con = ConnectionProvider.getConnection();
        %>



        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
        <script>
            $(document).ready(function () {
                alert("document loaded")
            })
        </script>
    </body>
</html>
