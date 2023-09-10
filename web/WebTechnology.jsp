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
                    <h1 class="display-4">Web Technology Tutorial</h1>
                </div>
            </div>
        </div>

        <div class="container" style="background: #ccccccy">
            <h2>What is Web Technology??</h2>
            <h4>Web Technology refers to the various tools and techniques that are utilized in the process of communication between different types of devices over the Internet. A web browser is used to access web pages. Web browsers can be defined as programs that display text, data, pictures, animation, and video on the Internet. Hyperlinked resources on the World Wide Web can be accessed using software interfaces provided by Web browsers.</h4><br>

            

            <h2>Web Technology can be classified into the following sections:</h2>

            <ol>
                <li><b>World Wide Web (WWW):</b> The World Wide Web is based on several different technologies: Web browsers, Hypertext Markup Language (HTML), and Hypertext Transfer Protocol (HTTP).</li>
                <li><b>Web Browser:</b> The web browser is an application software to explore www (World Wide Web). It provides an interface between the server and the client and requests to the server for web documents and services.</li>
                <li><b>Web Server:</b> Web server is a program which processes the network requests of the users and serves them with files that create web pages. This exchange takes place using Hypertext Transfer Protocol (HTTP).</li>
                <li><b>Web Pages:</b> A webpage is a digital document that is linked to the World Wide Web and viewable by anyone connected to the internet has a web browser.</li>
                <li><b>Web Development:</b> Web development refers to the building, creating, and maintaining of websites. It includes aspects such as web design, web publishing, web programming, and database management. It is the creation of an application that works over the internet i.e. websites.</li>
            </ol>
            
            
            <h2>Web Development can be classified into two ways:</h2>
            
            <ol>
                <li><b>Frontend Development:</b> The part of a website that the user interacts directly is termed as front end. It is also referred to as the ‘client side’ of the application.</li>
                <li><b>Backend Development:</b> Backend is the server side of a website. It is the part of the website that users cannot see and interact. It is the portion of software that does not come in direct contact with the users. It is used to store and arrange data.</li>
            </ol>
        </div>
        
        <footer class="text-center">
        <p>&copy; 2023 TechBlog</p>
        <p>Contact: ankitpatra070@gmail.com</p>
       
    </footer>

    </body>
</html>
