
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
  
  <style>
    
    .container {
      width: 400px;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
      text-align: center;
      color: #333;
      margin-top: 0;
    }
    .form-group {
      margin-bottom: 20px;
    }
    label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
      color: #333;
    }
    input[type="text"],
    input[type="password"],
    input[type="submit"]
    
     {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      border-radius: 3px;
      border: 1px solid #ccc;
    }
    input[type="submit"] {
      background-color: #4CAF50;
      color: white;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
      background-color: #45a049;
    }
    /* Additional Styles */
    input[type="password"]:focus {
      border-color: #4CAF50;
      outline: none;
    }
    input[type="submit"] {
      padding: 12px 20px;
      font-weight: bold;
      letter-spacing: 1px;
    }
  </style>
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
          <li >
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
          
          <li class="active ">
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
    <div class="main-panel">
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
          <div class="container">
    <h2>Change Password</h2>
     <c:forEach var="e" items="${cust}">
    <form action="change_pass" onsubmit="return validateForm()" method="post">
     <div class="form-group">
        <input type="hidden" id="id" name="id" value="${cust.id }" required>
        <input type="hidden" id="email" name="email" value="${cust.email }" required>
         <input type="hidden" id="name" name="name" value="${cust.name }" required>
      </div>
      <div class="form-group">
        
        <input type=hidden id="currentPassword" name="passe" value="${cust.pass }" required>
      </div>
      <div class="form-group">
        <label for="newPassword">New Password:</label>
        <input type="password" id="newPassword" name="pass"  required>
      </div>
      <div class="form-group">
        <label for="confirmPassword">Confirm Password:</label>
        <input type="password" id="confirmPassword" name="conf_pass" required>
      </div>
      <div class="form-group">
        <input type="submit" value="Change Password">
      </div>
    </form>
    </c:forEach>
  </div>
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
 <script>
 function validateForm() {
	    var newPassword = document.getElementById("newPassword").value;
	    var confirmPassword = document.getElementById("confirmPassword").value;

	    if (newPassword !== confirmPassword) {
	      alert("New Password and Confirm Password do not match!");
	      return false; // Prevent form submission
	    }
	    
	    return true; // Allow form submission
	  }
 
 </script>
    
  
<% 


String ccemail = (String) s1.getAttribute("customer");
s1.setAttribute("b1",ccemail);


%>
 
  
</body>

</html>
