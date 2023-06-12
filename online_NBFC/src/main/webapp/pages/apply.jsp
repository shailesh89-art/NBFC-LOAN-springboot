<!--
=========================================================
* Paper Dashboard 2 - v2.0.1
=========================================================

* Product Page: https://www.creative-tim.com/product/paper-dashboard-2
* Copyright 2020 Creative Tim (https://www.creative-tim.com)

Coded by www.creative-tim.com

 =========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
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
  <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="../assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- Swal Alert  -->
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
              <i class="nc-icon nc-bank"></i>
              <p>Dashboard</p>
            </a>
          </li>
          <li>
            <a href="cust_applied_loan?email=${email}">
              <i class="nc-icon nc-diamond"></i>
              <p>Applied Loans</p>
            </a>
          </li>
          <li>
            <a href="cust_applied_loan">
              <i class="nc-icon nc-pin-3"></i>
              <p>EMI Paid</p>
            </a>
          </li>
          <li>
            <a href="emi_pending">
              <i class="nc-icon nc-bell-55"></i>
              <p>EMI Pending</p>
            </a>
          </li>
          <li>
            <a href="pay_emi">
              <i class="nc-icon nc-single-02"></i>
              <p>Pay EMI</p>
            </a>
          </li>
          <li>
            <a href="calculater">
              <i class="nc-icon nc-tile-56"></i>
              <p>EMI Calculater</p>
            </a>
          </li>
          <li>
          
            <a href="/cust_logout">
              <i class="nc-icon nc-caps-small"></i>
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
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title"> Apply For Loan</h4>
              </div>
              <div class="card-body">
               
                <form action="next" method="post" enctype="multipart/form-data">
                 
                 <div class="row">
                  <div class="col-md-6 mb-4">
 </div>
                </div>
                
                
                
                 <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" id="Name" class="form-control"name="name" required/>
                      <label class="form-label" for="Name">Full Name</label>
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                     <div class="form-outline">
                      <input type="email" id="emailAddress" class="form-control" name="email" value=" <%
                    		  
          String cemail = (String) s1.getAttribute("b1");
          out.println(cemail);
          
          %>"/>
                      <label class="form-label" for="emailAddress">Email</label>
                    </div>

                  </div>
                </div>

               

                <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" id="address" class="form-control" name="address" required  />
                      <label class="form-label" for="Address">Address</label>
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="tel" id="phoneNumber" class="form-control" name="pnumber" minlength="10" maxlength="10" required />
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
                        required
                      />
                      <label for="loantenure" class="form-label">Loantenure(year)</label>
                    </div>
                    <div class="btn-group btn-group-toggle" data-toggle="buttons" >

                  </div>
                 
                </div>
                <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" id="interestRate" class="form-control" value="3"  required oninput="add_number()" name="intrate"  />
                      <label class="form-label" for="interestRate">Interest Rate (in % per annum)</label>
                    </div>

                  </div>
                </div>
                
                 <div class="row">
                   <div class="col-md-6 mb-4">

                     <div class="form-outline">
                      <input type="number" id="loanamount"  class="form-control"  oninput="add_number()" name="loanamt" required/>
                      <label class="form-label" for="loanamount"  >Loan Amount(in Rs.)</label>
                    </div>
                  </div>
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" id="processingfees" class="form-control" value="200"  required  oninput="add_number()" name="pfees"  />
                      <label class="form-label" for="processingfees">Processing Fees </label>
                    </div>

                  </div>
                </div>
                
            <div class="row">
                  <div class="col-md-6 mb-4">

                     <div class="form-outline">
                      <input type="text" id="finalamount" class="form-control" name="finalamount" />
                      <label class="form-label" for="finalamount">Final Amount</label>
                    </div>

                  </div>
                 
                </div>
                
                 <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                     
                      <input type="text" id="occupation" class="form-control" name="occupation" required>
                       <label for="occupation">Occupation:</label>
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                  
		<select id="income" class="form-control" name="income" required>
			<option  value="" hidden>Select Income Range</option>
			<option value="Less than 25,000">Less than 25,000</option>
			<option value="25,000 - 50,000">25,000 - 50,000</option>
			<option value="50,000 - 75,000">50,000 - 75,000</option>
			<option value="75,000 - 100,000">75,000 - 100,000</option>
			<option value="More than 100,000">More than 100,000</option>
		</select>
		 <label for="income">Income</label>
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="file" id="upload1" class="form-control" name="file1" required/>
                      <label class="form-label" for="upload1">Adhar card</label>
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="file" id="upload2" class="form-control" name="file2" required />
                      <label class="form-label" for="upload2">PAN</label>
                    </div>
                    
                  </div>
                </div>
                  <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="file" id="upload3" class="form-control" name="file3" required />
                      <label class="form-label" for="upload3">Photo</label>
                 </div>
                </div>
                </div>
                
                 <div class="row">
                  <div class="col-md-6 mb-4">

                    <h6 class="mb-3">EMI Option</h6>

                    <select class="form-control" id="durationtime"  name="choice" required>
                      <option value="" hidden>Select</option>
                      <option value="daily">Daily</option>
                      <option value="monthly">Monthly</option>
                     
                    </select>
                    <label class="form-label select-label">Choose option</label>
                     </div>
                     <div class="col-md-6 mb-4">

                    <h6 class="mb-3">Loan Type</h6>

                    <select class="form-control" id="loantype"  name="loanchoice" required>
                      <option value="" hidden>Select</option>
                      <option value="Farm Equipment Loan">Farm Equipment Loan</option>
                      <option value="Commercial Vehicles">Commercial Vehicles</option>
                      <option value="Business Loan">Business Loan</option>
                      <option value="Personal Loan">Personal Loan</option>
                     
                    </select>
                    <label class="form-label select-label">Choose option</label>
                 </div>
                </div>
                
                     <div class="row">
                    <div class="col-12">
                    <button type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body"  onclick="myFunction()"  >Apply</button>
                    </div>
                    </div>
                </form>
                    </div>
                    

                  </div>
                  
                </div>
                   
                  
                </div>
              </div>
      <footer class="footer footer-black  footer-white ">
        <div class="container-fluid">
          <div class="row">
            <nav class="footer-nav">
              <ul>
                <li><a href="https://www.creative-tim.com" target="_blank">Creative Tim</a></li>
                <li><a href="https://www.creative-tim.com/blog" target="_blank">Blog</a></li>
                <li><a href="https://www.creative-tim.com/license" target="_blank">Licenses</a></li>
              </ul>
            </nav>
            <div class="credits ml-auto">
              <span class="copyright">
                © <script>
                  document.write(new Date().getFullYear())
                </script>, made with <i class="fa fa-heart heart"></i> by Creative Tim
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
  <script>
var loanamount = document.getElementById("loanamount");
var loantenure = document.getElementById("loantenure");

var processingfees = document.getElementById("processingfees");
var finalamount = document.getElementById("finalamount");
function add_number() {
   var first_number = parseFloat(loanamount.value);
   
   var second_number = parseFloat(processingfees.value);
   
   var third_number = parseFloat(loantenure.value);
   
   var result =first_number + (first_number*3/100*third_number) + second_number;
   
   document.getElementById("finalamount").value = result;
}

function myFunction() {

	 swal("Thank You For Appling", "", "success", {
	      ,

	});

}
/*
function showAlert() {
	  var result = confirm("Do you want to proceed to the next screen?");

	  if (result) {
	    // User clicked "Yes"
	    // Perform the action to go to the next screen
	    window.location.href = "cust_applied_loan.jsp";
	  } else {
		  window.location.href = "apply.jsp";
	    // User clicked "No"
	    // Stay on the same screen or perform any other action
	    // You can add code here to handle the "No" action
	  }
	}
*/
</script>

<%

String ccemail = (String) s1.getAttribute("customer");
s1.setAttribute("b1",ccemail);


%>


</body>

</html>