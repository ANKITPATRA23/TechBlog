<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Page</title>
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

        <div class="container-fluid p-0 m-0">
            <div class="jumbotron text-white banner-background" style="background:green;">
                <div class="container">
                    <h1 class="display-4">Python Tutorial</h1>
                </div>
            </div>
        </div>

        <div class="container" style="background: #ccccccy">

            <h4>This Python Tutorial is very well suited for Beginners, and also for experienced programmers with other programming languages like C++ and Java. This specially designed Python tutorial will help you learn Python Programming Language in the most efficient way, with topics from basics to advanced (like Web-scraping, Django, Deep-Learning, etc.) with examples.</h4><br>

            <h2>What is Python??</h2><br>

            <h4>Python is a high-level, general-purpose, and very popular programming language. Python programming language (latest Python 3) is being used in web development, Machine Learning applications, along with all cutting-edge technology in Software Industry.</h4>

            <h4>Python language is being used by almost all tech-giant companies like – Google, Amazon, Facebook, Instagram, Dropbox, Uber… etc.</h4>  
            
            <div class="container-fluid text-center">
                <img src="pics/python.png" width="700" height="350"/>
            </div>
            
            <h2>Why Learn Python?</h2>
            
            <h4>Python is currently the most widely used multi-purpose, high-level programming language, which allows programming in Object-Oriented and Procedural paradigms. Python programs generally are smaller than other programming languages like Java. Programmers have to type relatively less and the indentation requirement of the language, makes them readable all the time.</h4>
            
        </div>
        
        <footer class="text-center">
        <p>&copy; 2023 TechBlog</p>
        <p>Contact: ankitpatra070@gmail.com</p>
       
    </footer>

    </body>
</html>
