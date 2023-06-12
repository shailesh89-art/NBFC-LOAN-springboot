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
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-**********" crossorigin="anonymous" />
  



<style>
.wrapper{
    width: 540px;
    background: #FFFFFF;
    padding: 20px 25px;
    border-radius: 10px;
    box-shadow: 0 0 60px rgba(1, 0, 5, 0.15);

}

.wrapper h2{
    font-size: 28px;
    font-weight: 700;
}

.wrapper .div-bar{
    display: block;
    width: 120px;
    background: #961251;
    height: 6px;
    border-radius: 10px;
    margin: 10px 0px;
}

.wrapper .calculator{
    position: relative;
    flex-direction: row;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    padding: 10px 0px;
}


.calculator .calculator-input{
    position: relative;
    width: 50%;
    justify-content: space-around;
    padding: 5px 10px;
    display: block;
}

.calculator .calculator-input input{
    width: 100%;
    height: 40px;
    padding: 20px 14px;
    font-family: "Poppins",sans-serif;
    font-weight: 400;
    font-size: 18px;
    border: 1px solid #7d7d7d;
    border-radius: 4px;
}

.calculator .calculator-input input:focus{
    outline: none;
    border: 1px solid #961251;
}


.calculator .calculator-input label{
    color:#961251;
    font-size: 16px;
    padding: 2px 4px;
    font-weight: 500;
}

.calculator .calculator-input button {
    width: 100%;
    padding: 14px 16px;
    margin-top: 20px;
    font-weight: 700;
    cursor: pointer;
    font-family: "Poppins",sans-serif;
    background: #961251;
    border: 0;
    color: #FFFFFF;
    font-size: 14px;
    text-transform: uppercase;
    border-radius: 4px;
}

 /*chrome, safari, edge, opera*/
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button{
    -webkit-appearance: none;
    margin: 0;
}

/*Firefox*/

input[type=number]{
    -moz-appearance: textfield;
}

.wrapper .calculator-result{
    position: relative;
    display: block;
    padding: 10px;
    margin: 20px 0;
}
.wrapper .calculator-result ul{
    width: 100%;
    background: #96125110;
    padding: 10px 15px;
    border-radius: 5px;
}

.wrapper .calculator-result li{
    list-style: none;
    line-height: 28px;
    font-weight: 500;
    font-size: 18px;
}


.calculator-result .loan_emi{
    font-weight: 700;
    font-size: 22px;
    color: #961251;
}
.calculator-result .loan_principle,
.calculator-result .loan_interest_rate,
.calculator-result .loan_total{
    color: #333332;
    font-weight: 700;
    font-size: 22px;
}

.calculator-result canvas{
    padding: 20px;
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
          <li class="active ">
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
    
      <div class="content">
        <div class="row">
          <div class="col-md-12">
           
                      <div class="wrapper" style="margin-left: 350px;">
        <h2>Loan EMI Calculator</h2>
        <span class="div-bar"></span>
        <div class="calculator">
            <div class="calculator-input">
                <label for="">Loan Amount (Rs.):</label>
                <input type="number" id="loan_amount" requried>
            </div>
            <div class="calculator-input">
                <label for="">Loan Tenure (Year.):</label>
                <input type="number" id="loan_tenure" requried>
            </div>
            <div class="calculator-input">
                <label for="">Interest Rate (%):</label>
                <input type="number" id="loan_interest" requried >
            </div>
            <div class="calculator-input">
                <button class="calculator-btn">Calculate EMI</button>
            </div>
        </div>

        <div class="calculator-result">
            <!---Canvas-->
            <canvas id="loanChart"></canvas>
            <ul>
                <li>Monthly Loan EMI: <span class="loan_emi"></span></li>
                <li>Principle Amount: <span class="loan_principle"></span></li>
                <li>Loan on Interest: <span class="loan_interest_rate"></span></li>
                <li>Total Amount to be paid: <span class="loan_total"></span></li>
            </ul>
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
 	
  <!--Javascript-->
  <script>
      const loanAmount = document.getElementById("loan_amount");
const loanTenure = document.getElementById("loan_tenure");
const loanRate = document.getElementById("loan_interest");

const loanEmi = document.querySelector(".loan_emi");
const loanPrinciple = document.querySelector(".loan_principle");
const loanTotal = document.querySelector(".loan_total");
const loanInterest = document.querySelector(".loan_interest_rate");



const submitBtn = document.querySelector(".calculator-btn");

submitBtn.addEventListener("click", function(){

  amount = loanAmount.value;
  tenure = (loanTenure.value)*12; // 1Year = 12 months
  rate = (loanRate.value)/12/100; // loan rate per year / 100 = loan percentage

  emi = ((amount * rate * (1+rate)**tenure)/(((1+rate)**tenure)-1));
  //console.log(emi);
  total = emi * tenure; // total amount to be paid including interest
  interest = total - amount // interest = total amount - principle amount
 // console.log(total);
  //console.log(interest);

  loanEmi.innerHTML = Math.floor(emi);
  loanPrinciple.innerHTML = Math.floor(amount);
  loanTotal.innerHTML = Math.floor(total);
  loanInterest.innerHTML = Math.floor(interest);


  //Loanchart
  let xValues = ["Principle", "Interest"];
  let yValues = [amount, Math.floor(interest)];

  let barColors = ["#961251", "#000000"];

  new Chart("loanChart", {
      type: "pie",
      data: {
          labels: xValues,
          datasets:[{
              backgroundColor: barColors,
              data: yValues
          }]
      },
      options: {
          title: {
              display:false,
          }
      }
  });


});
  </script>
  
</body>

</html>