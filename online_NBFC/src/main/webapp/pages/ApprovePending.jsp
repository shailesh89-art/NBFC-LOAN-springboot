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
        
          <li >
            <a href="admin_dashboard">
              <i class="fa fa-tachometer" aria-hidden="true"></i>
              <p>Dashboard</p>
            </a>
          </li>
          
          <li>
             <a href="add_member">
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
          <li class="active">
            <a href="pending_details">
              <i class="fa fa-cog"></i>
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
            <a class="navbar-brand" href="javascript:;"> Dashboard</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
          
         <a class="navbar-brand" href="in"> Login</a>
  
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      
     <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title"> Approve Pending Loan</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                 <form action="viewfile" method="post" >
                 
                 <div class="row">
                  <div class="col-md-6 mb-4">

                   

                  </div>
                  
                </div>
                
                 <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" id="id" class="form-control"name="id"  value="${pl.id }" readonly/>
                      <label class="form-label" for="Name">Cust ID</label>
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                    

                  </div>
                </div>
                
                 <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" id="Name" class="form-control"name="name"  value="${pl.name }" readonly/>
                      <label class="form-label" for="Name">Full Name</label>
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                     <div class="form-outline">
                      <input type="email" id="emailAddress" class="form-control" name="email" readonly value="${pl.email }"/>
                      <label class="form-label" for="emailAddress">Email</label>
                    </div>

                  </div>
                </div>

               

                <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" id="address" class="form-control" name="address"  value="${pl.address }" readonly/>
                      <label class="form-label" for="Address">Address</label>
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="tel" id="phoneNumber" class="form-control" name="pnumber" value="${pl.pnumber }" readonly/>
                      <label class="form-label" for="phoneNumber">Phone Number</label>
                    </div>

                  </div>
                </div>
                
                 <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline datepicker">
                      <input
                        type="text"
                        class="form-control"
                        id="loantenure"
                        name="loantenure"
                         value="${pl.loantenure }" readonly
                      />
                      <label for="loantenure" class="form-label">Loantenure(per Year)</label>
                    </div>
                    <div class="btn-group btn-group-toggle" data-toggle="buttons" >


                  </div>
                 
                </div>
                </div>
                 <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" id="interestRate" class="form-control" value="3"  required oninput="add_number()" name="intrate" readonly />
                      <label class="form-label" for="interestRate">Interest Rate (in % per annum)</label>
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" id="processingfees" class="form-control" value="200"  required  oninput="add_number()" name="pfees" readonly />
                      <label class="form-label" for="processingfees">Processing Fees </label>
                    </div>

                  </div>
                </div>
                
                
                <div class="row">
                  <div class="col-md-6 mb-4">

                     <div class="form-outline">
                      <input type="number" id="loanamount"  class="form-control"  name="loanamt"  value="${pl.loanamt }" readonly/>
                      <label class="form-label" for="loanamount" >Loan Amount(in Rs.)</label>
                    </div>
                  </div>
                
                </div>
                
                
                
                 <div class="row">
                  <div class="col-md-6 mb-4">


                    <h6 class="mb-3">EMI Option</h6>

                      <input type="text" value="${pl.choice }" id="durationtime" name="choice" class="form-control" readonly  />
                    </div>
                    <div class="col-md-6 mb-4">

                    <h6 class="mb-3">Loan Type</h6>

                      <input type="text" value="${pl.loanchoice }" id="loanchoice" name="loanchoice" class="form-control" readonly />

                  </div>
                </div>
                 <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                     
                      <input type="text" id="occupation" class="form-control" readonly name="occupation" value="${pl.occupation }" required>
                       <label for="occupation">Occupation:</label>
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                  
		<input id="income" class="form-control" readonly name="income" value="${pl.income }" required>
		 <label for="income">Income</label>
                  </div>
                </div>

               
                  
                 <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" id="finalamount" class="form-control" name="finalamount" value="${pl.finalamount }" readonly />
                      <label class="form-label" for="finalamount">Final Amount</label>
                    </div>

                  </div>
                 
                </div>
                
                 

    
    <div class="container">
    <div class="row">
                  <div class="col-md-6 mb-4">

                   <h6 class="mb-3">Status</h6>

                    <select  class="form-control" id="status" name="status">
                      <option value="" >Select</option>
                      <option value="Accepted" style="background-color:green">Accepted</option>
                      <option value="Rejected">Rejected</option>
                     
                    </select>

                  </div>
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <label for="message">Message</label>
                      <textarea id="message" name="message" rows="4" cols="50"></textarea>
                    </div>

                  </div>
                </div>
                
                   </div>
    

                    <div class="mt-4">
                     <button type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Submit</button>
                    </div>
                    </form>
                    </div>
                    

                  </div>
                </div>
                   
                  
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
  
  
   
</body>

</html>
