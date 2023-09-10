<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.dao.LikeDao"%>
<%@page import="com.tech.blog.entities.User"%>

<%@page import="com.tech.blog.entities.Post"%>
<%@page import="java.util.List"%>
<div class="row">
<%
    
   Thread.sleep(750);
    PostDao d = new PostDao(ConnectionProvider.getConnection());
    int cid = Integer.parseInt(request.getParameter("cid"));
    List<Post> post = null;
    if(cid==0){
        post = d.getAllPosts();
    }else{
        post = d.getPostByCatId(cid);
    }
    if(post.size() ==0){
    out.println("<h3 class='display-3 text-center'>No Post in this Category!!!</h3>");
    return;
    }
    
    for(Post p:post){
%>

<div class="col-md-6 mt-2">
    <div class="card">
        <img class="card-img-top" src="blog_pics/<%= p.getP_Pic() %>" alt="Card image cap">
        <div class="card-body">
            <b><%= p.getP_Title() %></b>
            <p><%= p.getP_Content() %></p>
            
            
        </div>
            <div class="card-footer text-center primary-background">
                <% 
                                LikeDao ld = new LikeDao(ConnectionProvider.getConnection());
                  %>
                            <a href="#!" onclick="doLike(<%= p.getP_id()%>,<%= p.getUser_id()%>)"class="btn btn-outline-primary btn-sm"><i class="fa fa-thumbs-o-up"></i><span class="like-counter"><%= ld.countLikeOnPost(p.getP_id()) %></span></a>
                <a href="show_blog_page.jsp?post_id=<%= p.getP_id()%>" class="btn btn-outline-primary btn-sm">Read More...</a>
                
                <a href="#!" class="btn btn-outline-primary btn-sm"><i class="fa fa-comment-o"></i><span>5k</span></a>
            </div>
    </div>
</div>

<%
    }

%>

</div>