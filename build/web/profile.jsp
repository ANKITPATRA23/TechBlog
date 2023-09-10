<%@page import="com.tech.blog.entities.User"%>
<%@page import="com.tech.blog.entities.Category"%>
<%@page import="com.tech.blog.entities.Message"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="java.util.*"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page errorPage="error_page.jsp"%>
<%
    User user = (User)session.getAttribute("currentuser");
    if(user==null){
        response.sendRedirect("loginPage.jsp");
    }
    
    
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"><!-- comment -->
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .banner-background{
                clip-path: polygon(20% 0%, 80% 0%, 100% 0, 100% 80%, 80% 100%, 20% 100%, 0% 80%, 0 0);
            }
        </style>
    </head>
    <body class="primary-background">

        <!-- navbar -->

        <nav class="navbar navbar-expand-lg primary-background">
            <a class="navbar-brand" href="index.jsp"><span class="fa fa-diamond"></span>TechBlog</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="#"><span class="fa fa-bell-o"></span>Learn Code with Us</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="fa fa-caret-square-o-down"></span>
                            Categories
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Programming Languages</a>
                            <a class="dropdown-item" href="#">Database Management System</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Data Structure</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"><span class="fa fa-address-book-o"></span>Contact</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="modal" data-target="#add-category-modal"><span class="fa fa-plus-square-o"></span>Add Category</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="modal" data-target="#add-post-modal"><span class="fa fa-plus-square-o"></span>Post</a>
                    </li>


                </ul>
                <ul class="navbar-nav mr-right">
                    <li class="nav-item">
                        <a class="nav-link" href="#" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle"></span><%= user.getFirst_name()+ " " + user.getLast_name()%></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="LogOut"><span class="fa fa-sign-out"></span>LogOut</a>
                    </li>
                </ul>
            </div>
        </nav>


        <%
                    Message m=(Message) session.getAttribute("msg");
                    if(m !=null){
        %>

        <div class="alert alert-primary <%= m.getCssClass() %>" role="alert">
            <%= m.getContent() %>
        </div>
        <%
            session.removeAttribute("msg");
            }
        %>


        <!-- Main body -->
        <main class="banner-background">
            <div class="container">
                <div class="row mt-4">
                    <div class="col-md-4">
                        <!-- Categories -->
                        <div class="list-group">
                            <a href="#" onclick="getPosts(0, this)" class="c-link list-group-item list-group-item-action active">
                                All Posts
                            </a>
                            <%
                                PostDao d = new PostDao(ConnectionProvider.getConnection());
                                ArrayList<Category> list1 = d.getAllCategories();
                                for(Category cc :list1){
                                
                            %>
                            <a href="#" onclick="getPosts(<%= cc.getC_id()%>, this)"class="c-link list-group-item list-group-item-action"><%= cc.getName()%></a>
                            <%
                                }
                            %>
                        </div>

                    </div>

                    <div class="col-md-8">
                        <div class="container text-center" id="loader">
                            <i class="fa fa-refresh fa-3x fa-spin"></i>
                            <h3 class="mt-2">Loading...</h3>
                        </div>

                        <div class="container-fluid" id="post-container">

                        </div>
                    </div>
                </div>
            </div>
        </main>





        <!-- Main Body -->

        <!-- Profile Modal -->
        <div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header primary-background text-white">
                        <h5 class="modal-title" id="exampleModalLabel">TechBlog</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">
                            <img src="pics/<%= user.getProfile()%>" class="img-fluid" style="border-radius:50%;max-width: 150px;"/ >
                                 <h5 class="modal-title mt-3" id="exampleModalLabel"><%= user.getFirst_name()+ " " + user.getLast_name()%></h5>
                        </div>
                        <div id="profile-details">
                            <table class="table table-dark">

                                <tbody>
                                    <tr>
                                        <th scope="row">ID</th>
                                        <td><%= user.getId()%></td>

                                    </tr>
                                    <tr>
                                        <th scope="row">Email</th>
                                        <td><%= user.getEmail()%></td>

                                    </tr>
                                    <tr>
                                        <th scope="row">Gender</th>
                                        <td><%= user.getGender()%></td>

                                    </tr>

                                    <tr>
                                        <th scope="row">Status</th>
                                        <td><%= user.getAbout()%></td>

                                    </tr>

                                    <tr>
                                        <th scope="row">Registered on:</th>
                                        <td><%= user.getDateTime().toString()%></td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <!--profile edit-->

                        <div id="profile-edit" style="display:none" class="primary-background text-white">
                            <h3 class="text-center mt-2">Please Edit Carefully!!!</h3>
                            <form action="EditServlet" method="post" enctype="multipart/form-data">
                                <table class="table">
                                    <tr>
                                        <td>ID :</td>
                                        <td><%= user.getId()%></td>
                                    </tr>
                                    <tr>
                                        <td>Email :</td>
                                        <td><input type="email" class="form-control" name="user_email" value="<%= user.getEmail()%>"</td>
                                    </tr>
                                    <tr>
                                        <td>Password :</td>
                                        <td><input type="password" class="form-control" name="user_password" value="<%= user.getPassword()%>"</td>
                                    </tr>
                                    <tr>
                                        <td>About :</td>
                                        <td>
                                            <textarea rows="3" class="form-control" name="user_about"><%= user.getAbout()%>
                                                
                                            </textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>New Profile pic :</td>
                                        <td>
                                            <input type="file" name="image" class="form-control">
                                        </td>
                                    </tr>


                                </table>
                                <div class="container text-center">
                                    <button type="submit" class="btn btn-outline-primary">Save</button>
                                </div>
                            </form>
                        </div> 


                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button id="edit-profile-button" type="button" class="btn btn-primary">Edit</button>
                    </div>
                </div>
            </div>
        </div>


        <!-- add post Model -->


        <!-- Modal -->
        <div class="modal fade" id="add-post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Your Post Details...</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form id="add-post-form" action="PostServlet" method="post">

                            <div class="form-group">
                                <select class="form-control" name="cid">
                                    <option selected disabled>---Select Category---</option>
                                    <%
                                        PostDao postd = new PostDao(ConnectionProvider.getConnection());
                                        ArrayList<Category> list = postd.getAllCategories();
                                        
                                        for(Category c:list){
                                        
                                        
                                    %>
                                    <option value="<%= c.getC_id() %>"><%= c.getName() %></option>

                                    <%
                                        }
                                    %>
                                </select>
                            </div>
                            <div class="form-group">
                                <input name="pTitle" type="text" placeholder="Enter the Title" class="form-control"/>
                            </div>

                            <div class="form-group">
                                <textarea name="pContent"class="form-control" style="height:150px" placeholder="Enter your Content..."></textarea>
                            </div>
                            <div class="form-group">
                                <textarea name="pCode"class="form-control" style="height:150px" placeholder="Enter your Code....(if any)"></textarea>
                            </div>

                            <div class="form-group">
                                <label>Select your Pic:</label>&nbsp;&nbsp;&nbsp;&nbsp;

                                <input type="file" name="pic">
                            </div>

                            <div class="container text-center">
                                <button type="submit" class="btn btn-outline-primary">Post</button>
                            </div>
                        </form>     
                    </div>

                </div>
            </div>
        </div>
        <!--  End of Modal -->



        <!-- add Categoy Model -->

        <!--Modal Start-->
       

        <!-- End of Modal -->
        <div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Category..</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form id="add-category-form" action="CategoryServlet" method="post">
                        
                            <div class="form-group">
                                <input name="cName" type="text" placeholder="Enter the Category.." class="form-control"/>
                            </div>
                            
                            <div class="form-group">
                                <textarea name="cDescription"class="form-control" style="height:100px" placeholder="Enter the description..."></textarea>
                            </div>
                            
                            <div class="container text-center mb-2">
                                <button type="submit" class="btn btn-outline-primary">Add</button>
                            </div>
                        </form>
                    </div>
                    
                </div>
            </div>
        </div>
        <!--Modal-->




        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="js/myjs.js" type="text/javascript"></script>


        <script>
                                $(document).ready(function () {

                                    let editStatus = false;
                                    $('#edit-profile-button').click(function () {
                                        $('#profile-details').hide();
                                        if (editStatus === false) {
                                            $('#profile-details').hide();

                                            $('#profile-edit').show();
                                            editStatus = true;
                                            $(this).text("Back");
                                        } else {
                                            $('#profile-details').show();

                                            $('#profile-edit').hide();
                                            editStatus = false;
                                            $(this).text("Edit");
                                        }
                                    });
                                });
        </script>

        <!-- now add post js -->
        <script>
            $(document).ready(function (e) {
                //
                $("#add-post-form").on("submit", function (event) {
                    //this code gets called when form is submitted....
                    event.preventDefault();
                    console.log("Posted..");
                    let form = new FormData(this);

                    //now requesting to server
                    $.ajax({
                        url: "PostServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            //success ..

                            if (data.trim() === 'done')
                            {
                                swal("Good job!", "saved successfully", "success");
                            } else
                            {
                                swal("Error!!", "Something went wrong try again...", "error");
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            //error..
                            swal("Error!!", "Something went wrong try again...", "error");
                        },
                        processData: false,
                        contentType: false
                    });
                });
            });
        </script>
        <!--Loading the posts-->
        <script>

            function getPosts(catId, temp) {
                $("#loader").show();
                $("#post-container").hide();

                $(".c-link").removeClass('active');



                $.ajax({
                    url: "load_post.jsp",
                    data: {cid: catId},
                    success: function (data, textStatus, jqXHR) {

                        $("#loader").hide();
                        $("#post-container").show();
                        $("#post-container").html(data);
                        $(temp).addClass('active');
                    }
                })
            }

            $(document).ready(function (e) {
                let allPostRef = $('.c-link')[0]
                getPosts(0, allPostRef);
            });

        </script>
        
        <!--Add category-->
        <script>
            $(document).ready(function(e){
               $("#add-category-form").on("submit",function(event){
                  event.preventDefault();
                  console.log("Posted..");
                  
                  let form = new FormData(this);
                  
                  $.ajax({
                     url : "CategoryServlet",
                     data:form,
                     type:'POST',
                     success:function(data,textStatus, jqXHR){
                         if (data.trim() === 'done')
                            {
                                swal("Good job!", "saved successfully", "success");
                            } else
                            {
                                swal("Error!!", "Something went wrong try again...", "error");
                            }
                     },
                     error:function(jqXHR, textStatus, errorThrown){
                         swal("Error!!", "Something went wrong try again...", "error");
                     },
                     processData:false,
                     contentType:false
                  });
               }); 
            });
        </script>
        

    </body>
</html>

