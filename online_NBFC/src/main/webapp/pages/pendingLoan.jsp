<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
 
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
  
  <!-- CSS Files -->
  <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="../assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
  
  
  <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
      }
     
      h2 {
        text-align: center;
      }
      input[type="number"] {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        margin-top: 6px;
        margin-bottom: 16px;
      }
      input[type="submit"] {
        background-color: #4CAF50;
        color: #fff;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        float: right;
      }
      input[type="submit"]:hover {
        background-color: #45a049;
      }
      .result {
        font-size: 24px;
        font-weight: bold;
        text-align: center;
        margin-top: 20px;
      }
      
      footer{background-color:gray ; 
      color:white;
      }
      
      .button {
  display: inline-block;
  background: green;
  color: #fff;
  text-transform: uppercase;
  padding: 20px 30px;
  border-radius: 5px;
  box-shadow: 0px 17px 10px -10px rgba(0, 0, 0, 0.4);
  cursor: pointer;
  -webkit-transition: all ease-in-out 300ms;
  transition: all ease-in-out 300ms;
  
}
 .button:hover {
  box-shadow: 0px 37px 20px -20px rgba(0, 0, 0, 0.2);
  -webkit-transform: translate(0px, -10px) scale(1.2);
          transform: translate(0px, -10px) scale(1.2);
}
     .container {
  margin: auto;
  border-radius:20px;
  padding: 20px;
  width: 60%;
  background-color: #fff;
  box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
}
h1 {
  text-align: center;
  margin-bottom: 30px;
}
      label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
      }
      input[type="text"],
      input[type="email"],
      input[type="number"],
      select {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        font-size: 16px;
      }
      input[type="submit"] {
        background-color: #355EFC;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
		text-position:center;
      }
      input[type="submit"]:hover {
        background-color: #0d6efd;
      }
	  /* media query for smaller screens */
@media screen and (max-width: 480px) {
  /* Media query for smaller screens */
@media screen and (max-width: 768px) {
  input[type="text"],
  input[type="email"],
  input[type="tel"],
  textarea {
    width: 100%;
    padding: 10px;
    font-size: 14px;
  }
	.container {
    padding: 0 10px;
  
  }
	
	}
    form {
    max-width: 100%;
    padding: 100px;
  }

  input[type="submit"] {
    font-size: 14px;
  }
  input, textarea {
    margin-bottom: 10px;
  }
  
  input[type="submit"] {
    padding: 8px 16px;
  }
  @media (max-width: 768px) {
  .container {
    padding: 0 10px;
  }

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
        <a class="simple-text logo-normal">
          Administrater	   
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
        
          <li>
            <a href="admin_dashboard">
              <i class="nc-icon nc-bank"></i>
              <p>Dashboard</p>
            </a>
          </li>
          
          <li>
             <a href="add_member">
              <i class="nc-icon nc-single-02"></i>
              <p>Add Member</p>
            </a>
          </li>
          
           <li>
             <a href="viewMember">
              <i class="nc-icon nc-single-02"></i>
              <p>View Member</p>
            </a>
          </li>
          
          <li>                                              
            <a href="applied_loans">
              <i class="fa fa-money"></i>
              <p>Applied Loans</p>
            </a>
          </li>
          <li  class="active ">
      <a href="#dropdown1" data-toggle="collapse">
        <i class="fa fa-credit-card"></i>
        <div class="dropdown">
          <p>transection</p>
        </div>
      </a>
      <ul id="dropdown1" class="collapse">
        <p><a href="paid_transections">Paid Transections</a></p><br>
        <p><a href="#">Link 2</a></p><br>
        <p><a href="#">Link 3</a></p>
      </ul>
    </li>
          <li>
            <a href="statusfile">
              <i class="fa fa-area-chart"></i>
              <p>Status</p>
            </a>
          </li>
          <li>
            <a href="getsinglefile">
              <i class="fa fa-cog"></i>
              <p>Settings</p>
            </a>
          </li>
          <li>
            <a href="logoutadmin">
              <i class="fa fa-sign-out"></i>
              <p>Logout</p>
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
        
           
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
          
         
  
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      
     <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title"></h4>
              </div>
              <div class="card-body">
               <div class="container">
  
   <center><h3>Are You Sure to add this Application to pending ? </h3></center> 
   
    <form action="Addpending" method="post">
    
      <input type="hidden" value="${ps.id}" id="id" name="id" >
      <label for="name">Name:</label>
      <input type="text" value="${ps.name}" id="name" name="name">

   
      <input type="hidden" id="email" value="${ps.email}"name="email">

  
      <input type="hidden" id="phone" value="${ps.address}" name="address">

 
      <input type="hidden" id="address" value="${ps.pnumber}" name="pnumber">

     
      <input type="hidden" id="occupation" value="${ps.loantenure}"  name="loantenure">
      
     
     

      
      <input type="hidden" id="status"value="${ps.intrate}" name="intrate">
      
     
      <input type="hidden" id="income" value="${ps.pfees}"name="pfees">
      
     
      <input type="hidden" id="emioption"value="${ps.finalamount}" name="finalamount">
      
      
  <label for="loan-amount">Loan Amount:</label>
      <input type="number" id="loan-amount"value="${ps.loanamt}" name="loanamt">
      

      <input type="hidden" id="rate"value="${ps.choice}" name="choice" required>
      
       <input type="hidden" id="final-amount"value="${ps.loanchoice}" name="loanchoice">
      
      <input type="hidden" id="occupation" class="form-control" name="occupation" value="${ps.occupation }" required>
      
       <input type="hidden" id="income" class="form-control" name="income" value="${ps.income }" required>
       
     
      
     
    
		


	  <center><button type="submit" style=" color:white;font-size:20px;height:40px;width:200px;background-color:#2779e2;cursor:pointer"onclick="showAlert()">Add to pending</button></center>
    </form>
	</div>
              </div>
            </div>
         
        </div>
      </div>
     
    
   
   
             
          
                               <!-- Footer  Started-->
                                
  <footer class="footer footer-black  footer-white ">
        <div class="container-fluid">
          <div class="row">
            <nav class="footer-nav">
              <ul>
                <li><a href="https://www.creative-tim.com" target="_blank">NBFC</a></li>
                <li><a href="https://www.creative-tim.com/blog" target="_blank">Blog</a></li>
                <li><a href="https://www.creative-tim.com/license" target="_blank">Licenses</a></li>
              </ul>
            </nav>
            <div class="credits ml-auto">
              <span class="copyright">
                Copyright <script>
                  document.write(new Date().getFullYear())
                </script>, made with <i class="fa fa-heart heart"></i> by NBFC Team
              </span>
            </div>
          </div>
        </div>
      </footer>
      </div>
    </div>
      
        
       
   
                          <!-- Footer  Ended-->
  
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
   <script src="js/wallet.js"></script>

  
  
   
</body>

</html>
 
  
