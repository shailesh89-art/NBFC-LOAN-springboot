<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<center><h1>Customer Details</h1></center>
<form action="viewfile" method="post"  enctype="multipart/form-data">
<div class="container">

<div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" value="${user.id }" id="id" class="form-control"name="id" />
                      <label class="form-label" for="id">Customer Id</label>
                    </div>

                  </div>
                 
                </div>
 <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" value="${user.name }" id="Name" class="form-control"name="name" />
                      <label class="form-label" for="Name">Full Name</label>
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                     <div class="form-outline">
                      <input type="email" value="${user.email}" id="emailAddress" class="form-control" name="email" />
                      <label class="form-label" for="emailAddress">Email</label>
                    </div>

                  </div>
                </div>

               

                <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" value="${user.address }" id="address" class="form-control" name="address" />
                      <label class="form-label" for="Address">Address</label>
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="tel" value="${user.pnumber }" id="phoneNumber" class="form-control" name="pnumber"/>
                      <label class="form-label" for="phoneNumber">Phone Number</label>
                    </div>

                  </div>
                </div>
                
                 <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline datepicker">
                      <input
                        type="text" value="${user.loantenure }"
                        class="form-control"
                        id="loantenure"
                        name="loantenure"
                      />
                      <label for="loantenure" class="form-label">Loantenure(per Year)</label>
                    </div>
                    <div class="btn-group btn-group-toggle" data-toggle="buttons" >


                  </div>
                  <div class="col-md-6 mb-4">

                     <div class="form-outline">
                      <input type="number" id="loanamount" value="${user.loanamt }"  class="form-control"name="loanamt"/>
                      <label class="form-label" for="loanamount" required>Loan Amount(in Rs.)</label>
                    </div>
                  </div>
                </div>
                
                 <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" id="interestRate" class="form-control" value="3"  required  name="intrate" readonly />
                      <label class="form-label" for="interestRate">Interest Rate (in % per annum)</label>
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" id="processingfees" class="form-control" value="200"  required  name="pfees" readonly />
                      <label class="form-label" for="processingfees">Processing Fees </label>
                    </div>

                  </div>
                </div>
                
                 
               
                 <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <input type="text" id="finalamount" value="${user.finalamount }" class="form-control" name="finalamount" />
                      <label class="form-label" for="finalamount">Final Amount</label>
                    </div>

                  </div>
                 
                </div>
                
                  <div class="row">
                  <div class="col-md-6 mb-4">

                    <h6 class="mb-3">EMI Option</h6>

                      <input type="text" value="${user.choice }" id="durationtime" name="choice" class="form-control"  />

                   

                  </div>
                </div>
                

                <div class="row">
                  <div class="col-md-6 mb-4">

                    <h6 class="mb-3">Loan Type</h6>

                      <input type="text" value="${user.loanchoice }" id="loanchoice" name="loanchoice" class="form-control"  />

                   
                    

                  </div>
                </div>
                 <div class="row">
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                     
                      <input type="text" id="occupation" class="form-control" name="occupation" value="${user.occupation }" required>
                       <label for="occupation">Occupation:</label>
                    </div>

                  </div>
                  <div class="col-md-6 mb-4">

                  
		<input id="income" class="form-control" name="income" value="${user.income }" required>
		 <label for="income">Income</label>
                  </div>
                </div>
                </div>
                </div>
                <br><br>
               <center> <h1>Uploaded Documents</h1></center>
<div class="container">
  <div class="row">
    <div class="col-4">
      <img alt="${user.addharcard}"  src="fileuploadimg/${user.addharcard}" style="height:400px;width:400px" name="file1"></img><center>Addharcard</center><br><br>

    </div>
    <div class="col-4">
      <img alt="${user.pancard}"  src="fileuploadimg/${user.pancard}" style="height:400px;width:400px"  name="file2"></img><center>Pancard</center><br><br>

    </div>
    <div class="col-4">
      <img alt="${user.photo}"  src="fileuploadimg/${user.photo}" style="height:400px;width:400px"  name="file3"></img><center>Photo</center><br><br>

    </div>
    
     <div class="row">
                  <div class="col-md-6 mb-4">

                   <h6 class="mb-3">Status</h6>

                    <select class="select" id="status" name="status">
                      <option value="hidden" >Select</option>
                      <option value="Accepted" style="background-color:green">Accepted</option>
                      <option value="Rejected">Rejected</option>
                     
                    </select>

                  </div>
                  <div class="col-md-6 mb-4">

                    <div class="form-outline">
                      <label for="message">Message</label></p>
                      <textarea id="message" name="message" rows="4" cols="50"></textarea>
                    </div>

                  </div>
                </div>
    
  </div>
</div>
                   <center> <div class="mt-4">
                    <button type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Submit</button>
                   <a href="applied_loans" ><button type="button"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Back</button></a>
                    </div></center>
</form>
</body>
</html>