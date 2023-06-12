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
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-**********" crossorigin="anonymous" />
    
  
  
  <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
      }
      form {
        
        margin: 20px auto;
        padding: 20px;
       
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      }
      h2 {
        text-align: center;
      }
      input[type="number"] {
        width: 100%;
        padding: 12px;
        border: 1px solid black;
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
      
      .card label
      {
          font-size: 0.8571em;
    margin-bottom: 5px;
     color: black;
      }
      
     .form-control
     {
     border: 1px solid black;
     }
     
      .btn {
  padding: 10px 20px;
  border-radius: 4px;
  font-size: 16px;
  font-weight: bold;
}

.btn-primary {
  background-color: #007bff;
  border-color: #007bff;
  color: #fff;
}

.btn-secondary {
  background-color: #6c757d;
  border-color: #6c757d;
  color: #fff;
}

.btn:hover {
  opacity: 0.8;
}
     
     
    </style>
  
  
</head>

<body class="">
   <div class="wrapper ">
   <div class="sidebar" data-color="black" data-active-color="danger">
      <div class="logo">
        <a href="" class="simple-text logo-mini">
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
        
          <li class="active ">
            <a href="admin_dashboard">
              <i class="fas fa-tachometer-alt"></i>
              <p>Dashboard</p>
            </a>
          </li>
          
          <li>
             <a href="c_signup">
              <i class="fa fa-plus" aria-hidden="true"></i>
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
          <li>                                              
            <a href="paid_transections">
              <i class="fa fa-credit-card"></i>
              <p>paid_transections</p>
            </a>
          </li>
          <li>
            <a href="statusfile">
              <i class="fa fa-area-chart"></i>
              <p>Status</p>
            </a>
          </li> 
          <li>
            <a href="pending_details">
             <i class="fas fa-clock"></i>
              <p>pending details</p>
            </a>
          </li>
          <li>
            <a href="call_request">
              <i  class="fa fa-phone" aria-hidden="true"></i>
              <p>Call Request</p>
            </a>
          </li>
          <li>
            <a href="logoutadmin">
             <i class="fas fa-sign-out-alt"></i>
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
                <h4 class="card-title"> Pay Transection</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                 <form action="pay" method="post" >
                 
                 <div class="row">
                  <div class="col-md-6 mb-4">
                   <div class="form-outline">
                      
                     <input type="hidden" id="id" class="form-control"name="id"  value="${pay.id}" />
                    </div>
                   

                  </div>
                  
                </div>
                
                
                
                 <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                       <label class="form-label" for="Name">Full Name</label>
                     <input type="text" id="Name" class="form-control"name="name"  value="${pay.name}" />
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                     <div class="form-outline">
                     <label class="form-label" for="emailAddress">Email</label>
                      <input type="email" id="emailAddress" class="form-control" name="email" value="${pay.email}" />
                    </div>

                  </div>
                </div>

               

                <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                                            <label class="form-label" for="sendAmount">Transection Amount(Rs)</label>
                      <input type="text" id="sendAmount" class="form-control" name="transection_amt"  value="${pay.loanamt }" />
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                     <label class="form-label" for="period">Loan Period(in year)</label>
                    <input type="text" id="period" class="form-control" name="loan_period" value="${pay.loantenure }" />
                    </div>

                  </div>
                </div>
                
                   <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                                          <label class="form-label" for="total">Total Balance Amount(Rs)</label>
                    
                      <input type="text" id="total" class="form-control"name="total_balance"  value="" />
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                     <div class="form-outline">
                                           <label class="form-label" for="paymentdate">Select Payment Date</label>
                     
                      <input type="date" id="paymentdate" class="form-control" name="payment_date" />
                    </div>

                  </div>
                </div>
                
                
                <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                                          <label class="form-label" for="Name">EMI Amount</label>
                    
                      <input type="text" id="emi_amt" class="form-control"name="emi_amount"  value="" />
                    </div>
                   

                 
                    
                    

                  </div>
                </div>
            <center> 
             <div class="container">
        
          <!-- input fields here -->
          <div class="form-group">
            <button type="submit" class="btn btn-primary" name="transection_status" value="paid" onclick="sendAmount()">Submit</button>

            <button type="reset" class="btn btn-secondary">Reset</button>
          </div>
       
      </div>
      </center>
                    </form>
                    </div>
                    

                  </div>
                </div>
                   
                  
                </div>
              </div>
            </div>
         
             <div class="wallet sender-wallet">
  <h2>Sender Wallet</h2>
  <p>Email ID: sender@example.com</p>
  <p>Balance: <span id="sender-balance">$100000</span></p>
  <input type="email" placeholder="Enter receiver email" id="receiver-email">
  <input type="number" placeholder="Enter amount" id="sender-amount">
  <button onclick="sendMoney()">Send</button>
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
   <script src="../js/wallet.js"></script>
    
  <script>
  
 
  function cal() {
	  const period = document.getElementById("period").value;
	  const sendAmount = document.getElementById("sendAmount").value;
	  const interestRate = 3; //Assuming a fixed interest rate of 10% per annum
	  const monthlyRate = (interestRate / 100) / 12; //Calculating the monthly interest rate
	  const emi = ((sendAmount * monthlyRate * Math.pow((1 + monthlyRate), period*12)) / (Math.pow((1 + monthlyRate), period*12) - 1))+200; //Calculating the EMI amount
	  document.getElementById("emi_amt").value = emi.toFixed(2); //Setting the calculated EMI amount to the input field with the id "emi_amt" and rounding it off to 2 decimal places
	
  }
  
  cal();
  </script>
  
   
</body>

</html>
 
  
