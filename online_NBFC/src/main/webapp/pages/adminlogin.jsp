<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
   
<style>
#pageContent {
background: url(../assets/img/jan-sendereks.jpg) top left no-repeat;
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
 
<form action="admin_login" method="post">
<div id="pageContent">
  <div class="d-flex align-items-center h-100">
    <div class="container">
      <div class="row">
        <div class="col-xl-4 col-lg-5 col-md-6 col-sm-8 col-xs-12 ms-auto">
          <div class="bg-white rounded shadow-lg">
            <h1 class="text-center h5 pt-5 pb-3"><strong>ADMIN LOGIN</strong></h1>
            
              <div class="position-relative maxWidth320 px-2">
                <div class="inlineLogo"><i class="text-accent fas fa-at"></i></div>
                <input type="text" name="username" placeholder="Username" class="border-0  w-100" />
              </div>
              <div class="position-relative maxWidth320 px-2 d-flex align-items-end justify-content-between">
                <div>
                  <div class="inlineLogo"><i class="text-accent fas fa-key"></i></div>
                  <input type="password" name="password" placeholder="Password" required class="border-0  w-100" />
                </div>
                <div>
                  <button class="btn text-accent">Forgot?</button>
                </div>
              </div>
              <div id="submitBtn" class="text-center">
                <button class="btn w-50 btn-lg shadow-sm rounded-pill" type=submit>Login</button>
                 <h6 style="color:Red">${errorMsg}</h6>
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
</form>
</body>
</html>