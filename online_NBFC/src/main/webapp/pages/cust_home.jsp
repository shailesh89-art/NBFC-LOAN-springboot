
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    NBFC
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  <!-- CSS Files -->
  <link href="assets\css\bootstrap.min.css" rel="stylesheet" />
  <link href="assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="assets/demo/demo.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-**********" crossorigin="anonymous" />
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="white" data-active-color="danger">
      <div class="logo">
        <a href="https://www.creative-tim.com" class="simple-text logo-mini">
          <div class="logo-image-small">
            <img src="../assets/img/logo-small.png">
          </div>
          <!-- <p>CT</p> -->
        </a>
        <a href="" class="simple-text logo-normal">
      
          <!-- <div class="logo-image-big">
            <img src="../assets/img/logo-big.png">
          </div> --> 
          
          <%
          HttpSession s1 = request.getSession(false);
          String email = (String) s1.getAttribute("b1");
          out.println(email);
          
          %>
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="active ">
            <a href="cust_home">
              <i class="fas fa-tachometer-alt"></i>
              <p>Dashboard</p>
            </a>
          </li>
          <li>
            <a href="cust_applied_loan?email=${email}">
             <i class="fas fa-money-check-alt"></i>
              <p>Applied Loans</p>
            </a>
          </li>
          <li>
            <a href="paid_emi">
             <i class="fas fa-check-circle"></i>
              <p>EMI Paid</p>
            </a>
          </li>
          <li>
            <a href="emi_pending">
              <i class="fas fa-exclamation-circle"></i>
              <p>EMI Pending</p>
            </a>
          </li>
          <li>
            <a href="pay_emi">
             <i class="fas fa-credit-card"></i>
              <p>Pay EMI</p>
            </a>
          </li>
          <li>
            <a href="calculater">
             <i class="fa fa-calculator" aria-hidden="true"></i>
              <p>EMI Calculater</p>
            </a>
          </li>
           <li>
            <a href="cust_wallet?email=${email}">
              <i class="fas fa-wallet"></i>
              <p>Wallet</p>
            </a>
          </li>
          
          <li>
            <a href="change_pass?email=${email}">
             <i class="fas fa-key"></i>
              <p>Change Password</p>
            </a>
          </li>
          
          <li>
           <a href="/cust_logout">
              <i class="fas fa-sign-out-alt"></i>
              <p>Log Out</p>
            </a>
          </li>
         
        </ul>
      </div>
    </div>
    <div class="main-panel" style="padding-bottom: 369px;">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
           
          </div>
          
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
       
        <div class="row">
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
             <div class="card-body ">
             <a href="applyhere">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                    <img src="assets\img\app.jpg">
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Apply For Loan</p>
                      <p class="card-title"><p>
                    </div>
                  </div>
                </div></a>
              </div>
              <div class="card-footer ">
                <hr>
               
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
               <a href="cust_applied_loan?email=${email}">
                <div class="row"> 
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="fas fa-money-check-alt"></i>
                    </div>
                  </div>
                  
                  <div class="col-7 col-md-8">
                    
                   <div class="numbers">
                      <p class="card-category">Applied Loans</p>
                      
                    </div>
                  </div>
                  
                </div>
            </a>  </div>
              <div class="card-footer ">
                <hr>
               
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="fas fa-bell"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Notifications</p>
                      
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
                
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
              <a href="cust_wallet?email=${email}">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="fas fa-wallet"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Wallet</p>
                      <p class="card-title">+45K<p>
                    </div>
                  </div>
                </div></a>
              </div>
              <div class="card-footer ">
                <hr>
                
              </div>
            </div>
          </div>
        </div>
       
<div class="col-sm-8 col-mg-8">

</div>
     
        
      </div>
      <footer class="footer footer-black  footer-white ">
        <div class="container-fluid">
          <div class="row">
            <nav class="footer-nav">
              <ul>
                <li><a href="" target="_blank">Fortune</a></li>
                <li><a href="" target="_blank">Blog</a></li>
                <li><a href="" target="_blank">Licenses</a></li>
              </ul>
            </nav>
            <div class="credits ml-auto">
              <span class="copyright">
                © <script>
                  document.write(new Date().getFullYear())
                </script>, made with <i class="fa fa-heart heart"></i> by Fortune
              </span>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
  
  
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap.min.js"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="../assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/paper-dashboard.min.js?v=2.0.1" type="text/javascript"></script><!-- Paper Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
     <script src="../js/wallet.js"></script>
 
    
  
<% 


String ccemail = (String) s1.getAttribute("customer");
s1.setAttribute("b1",ccemail);


%>
 
  
</body>

</html>
