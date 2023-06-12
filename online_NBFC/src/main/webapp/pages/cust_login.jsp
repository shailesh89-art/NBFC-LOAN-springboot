<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;500&display=swap" rel="stylesheet">  

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
<style>
#pageContent {
background: url(../img/loginpage.jpg) top left no-repeat;
    background-size : cover;
    background-position: center;
    height:100vh;
    width:100%;
  }
  input {
    height:64px;
    outline : none;
    padding-left:32px;
  }
  .inlineLogo {
    position : absolute;
    line-height:64px;
  }
  .text-accent {
    color:#ea3f2d
  }
  .bg-accent {
    background-color:#ea3f2d
  }
  #submitBtn {
    margin-top:64px;
    margin-bottom: 32px;
    border-top : 1px dashed #eaeaea;
  }
  #submitBtn button {
    margin-top:-28px;
    /* Permalink - use to edit and share this gradient: https://colorzilla.com/gradient-editor/#f7644a+0,e73827+100 */
    background: rgb(247,100,74); /* Old browsers */
    background: -moz-linear-gradient(-45deg,  rgba(247,100,74,1) 0%, rgba(231,56,39,1) 100%); /* FF3.6-15 */
    background: -webkit-linear-gradient(-45deg,  rgba(247,100,74,1) 0%,rgba(231,56,39,1) 100%); /* Chrome10-25,Safari5.1-6 */
    background: linear-gradient(135deg,  rgba(247,100,74,1) 0%,rgba(231,56,39,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f7644a', endColorstr='#e73827',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
    color:#fff;
  }
  .maxWidth320 {
    max-width:320px;
    margin: 0 auto;
  }
</style>
</head>
<body>
 <!-- Navbar Start -->
    <div class="container-fluid fixed-top px-0 " style="background-color:#f1f3f480;">
        <div class="top-bar row gx-0 align-items-center d-none d-lg-flex">
            <div class="col-lg-6 px-5 text-start">
                <small><i class="fa fa-map-marker-alt text-primary me-2"></i>123 Pune, Maharastra, INDIA</small>
                <small class="ms-4"><i class="fa fa-clock text-primary me-2"></i>9.00 am - 9.00 pm</small>
            </div>
            <div class="col-lg-6 px-5 text-end">
                <small><i class="fa fa-envelope text-primary me-2"></i>info@example.com</small>
                <small class="ms-4"><i class="fa fa-phone-alt text-primary me-2"></i>+012 345 6789</small>
            </div>
        </div>

        <nav class="navbar navbar-expand-lg navbar-light py-lg-0 px-lg-5 wow fadeIn" data-wow-delay="0.1s">
            <a href="index.html" class="navbar-brand ms-4 ms-lg-0">
                <h1 class="display-5 text-primary m-0">Fortune</h1>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="index" class="nav-item nav-link ">Home</a>
                    <a href="about" class="nav-item nav-link">About</a>
                    <a href="service" class="nav-item nav-link">Services</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Loan Offering</a>
                        <div class="dropdown-menu border-light m-0">
                            <a href="farmloan" class="dropdown-item">Farm Equipment Loan</a>
                            <a href="vehicle" class="dropdown-item">Commercial Vehicles</a>
                            <a href="business" class="dropdown-item">Business Loan</a>
                            <a href="testimonial.html" class="dropdown-item">Personal Loan</a>
                        </div>
                    </div>
                    <a href="contact" class="nav-item nav-link ">Contact</a>
                     <a href="cust_login" class="nav-item nav-link active">Login</a>
                </div>
                <div class="d-none d-lg-flex ms-2">
                    <a class="btn btn-light btn-sm-square rounded-circle ms-3" href="">
                        <small class="fab fa-facebook-f text-primary"></small>
                    </a>
                    <a class="btn btn-light btn-sm-square rounded-circle ms-3" href="">
                        <small class="fab fa-twitter text-primary"></small>
                    </a>
                    <a class="btn btn-light btn-sm-square rounded-circle ms-3" href="">
                        <small class="fab fa-linkedin-in text-primary"></small>
                    </a>
                </div>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->

<form action="loginvalidater" method="post">

<div id="pageContent">
  <div class="d-flex align-items-center h-100">
    <div class="container">
      <div class="row">
        <div class="col-xl-4 col-lg-5 col-md-6 col-sm-8 col-xs-12 ms-auto">
          <div class="bg-white rounded shadow-lg">
            <h1 class="text-center h5 pt-5 pb-3"><strong>LOGIN</strong></h1>
            
              <div class="position-relative maxWidth320 px-2">
                <div class="inlineLogo"><i class="text-accent fas fa-at"></i></div>
                <input type="email" name="email" placeholder="Email ID" class="border-0  w-100" />
              </div>
              <div class="position-relative maxWidth320 px-2 d-flex align-items-end justify-content-between">
                <div>
                  <div class="inlineLogo"><i class="text-accent fas fa-key"></i></div>
                  <input type="password" name="pass" placeholder="Password" class="border-0  w-100"  />
                </div>
                <div>
                  <button class="btn text-accent">Forgot?</button>
                </div>
              </div>
              <div id="submitBtn" class="text-center">
                <button class="btn w-50 btn-lg shadow-sm rounded-pill" type=submit>Login</button>
              </div>
            
            <div class="text-center pb-4">
              Don't have an account? <a href="cust_signup">Signup</a>
            </div>
          </div>
          <div class="p-2 mx-2 rounded-bottom shadow bg-accent border-bottom border-dark"></div>
          <div class="p-1 mx-3 rounded-bottom shadow bg-accent"></div>
        </div>
      </div>
    </div>
  </div>
</div>
<c:if test="${not empty error}">
                <script>
                   alert("${error}");
                </script>
             </c:if>
</form>

</body>
</html>