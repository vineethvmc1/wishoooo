<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
 
<link type="text/css" rel="stylesheet" href="style2.css"/>
<style >
.product img{
width: 100%;
height: auto;
box-sizing: border-box;
object-fit:cover;
}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>















<!-- navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light  py-3 fixed-top">
  <div class="container">
   <img alt="" src="img/logo.png" height="150" width="150">

    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span > <i id="bar" class="fas fa-bars"></i></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        
        <li class="nav-item">
          <a class="nav-link" href="#">home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">categories</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">my page</a>
        </li>
        <li class="nav-item">
         <i class="far fa-search"></i>
         <i class="far fa-shopping-bag"></i>
        </li>
       </ul>
    </div>
  </div>
</nav>




<!-- featured -->
<section id="featured" class="my-5 py-5">
<div class="container text-center mt-5 py-5">
<h3>Products</h3>
<hr class="mx-auto">

</div>

<div class="row mx-auto container-fluid">
<div class="product text-center col-lg-3 col-md-4 col-12">
<img class="img-fluid mb-3" alt="" src="img/pro1.jpg" >
<div class="star">
<i class="fas fa-star"></i>
<i class="fas fa-star"></i>
<i class="fas fa-star"></i>
<i class="fas fa-star"></i>
</div>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td><td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td><td><a href="editform.jsp?id=${u.getId()}">Edit</a></td><td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>
</c:forEach>
<h5 class="p-name">${u.getName()}</h5>
<h4 class="p-price">200</h4>
<button class="buy-btn">Buy Now</button>
</div>



</section>


<table border="1" width="90%">
<tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th><th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td><td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td><td><a href="editform.jsp?id=${u.getId()}">Edit</a></td><td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="adduserform.jsp">Add New User</a>




<!-- footer-->
<footer class=" mt-5 py-5">
<div class="row conatiner mx-auto pt-5">
<div class="footer-one col-lg-3 col-md-6 col-12">
<img alt="" src="img/logo.png" height="150" width="150">
<p>where the happiness meets</p>
</div>
<div class="footer-one col-lg-3 col-md-6 col-12">
<h5 class="pb-2">Featured section</h5>
<ul class="text-uppercase list-unstyled">
<li>
<a >wishoo style</a>
</li>
<li>
<a>wishoo fashion</a>
</li>
<li>
<a >wishoo products</a>
</li>
<li>
<a >wishoo services</a>
</li>
</ul>
</div>
<div class="footer-one col-lg-3 col-md-6 col-12">
<h5 class="pb-2">contact us</h5>
<div><h6>ADDRESS</h6>


<p>KOCHI,ERNAKULAM</p></div>
<div><h6>phone</h6>
<p>+9789754564</p></div>
<div><h6>Email</h6>
<p>wishoo@cust.com</p></div>


</div>

<div class="footer-one col-lg-3 col-md-6 col-12">
<h5 class="pb-2">Featured section</h5>
<ul class="text-uppercase list-unstyled">
<li>
<i class="fas fa-envelope-square"></i>
</li>
<li>
<i class="fab fa-facebook-square"></i>
</li>
<li>
<i class="fab fa-twitter"></i>
</li>
<li>
<i class="fab fa-snapchat-ghost"></i>
</li>
</ul>
</div>


</div>

</footer>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>





</body>
</html>