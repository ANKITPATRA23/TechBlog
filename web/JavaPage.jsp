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
                    <h1 class="display-4"> Java Tutorial</h1>
                </div>
            </div>
        </div>

        <div class="container" style="background: #ccccccy">

            <h4>This Java programming tutorial is designed for beginners as well experienced professionals. Whether you’re looking to learn the basics of Java or its advanced concepts, our Java tutorial is the perfect resource for you.</h4><br>

            <h2>What is Java??</h2><br>

            <h4>Java is a most popular, object-oriented, widely used programming language and platform that is utilized for Android development, web development, artificial intelligence, cloud applications, and much more. So, mastering this gives you great opportunities in bigger organizations.</h4><br>

            <h4>Created by James Gosling and his team at Sun Microsystems (now part of Oracle Corporation) in the mid-1990s, Java was designed to be a platform-independent language with an emphasis on portability, security, and simplicity. Over the years, it has evolved into one of the most popular and enduring programming languages in the world.</h4><br>

            <h3>Simple java program</h3>

            <div class="container primary-background text-white">
                <pre style="color:white;">// A Java program to print "Hello World" 
                    public class GFG { 
                        public static void main(String args[]) 
                        { 
                            System.out.println("Hello World"); 
                        } 
                    }</pre>
            </div>
            
            <div class="container primary-background text-white">
                <p>Output: Hello World</p>
            </div>
        </div>
        
        <footer class="text-center">
        <p>&copy; 2023 TechBlog</p>
        <p>Contact: ankitpatra070@gmail.com</p>
       
    </footer>

    </body>
</html>
