<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f1f1f1;
  }
  
  form {
    width: 300px;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  }
  
  label {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
  }
  
  input[type="text"] {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-bottom: 10px;
  }
  
  button[type="submit"] {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  
  button[type="submit"]:hover {
    background-color: #45a049;
  }
</style>
</head>
<body>
<form action="updatew" method="post">
 <input type="hidden" name="id" id="id" value="${aw.id }">
 <label for="time">Current Time</label>
        <input type="text" name="time" id="time">
  <label for="camount">Current Amount</label>
        <input type="text" name="camount" id="camount" value="${aw.amount }">
  <label for="addamount">Amount to Add:</label>
  <input type="text" id="addamount" name="amount" >
   
   <button type="submit" id="result" onclick="addAmount()">Add</button>
  
  </form>
   <script>
  // Get the current time
  var now = new Date();
  
  // Format the time as desired
  var formattedTime = now.getHours() + ':' + now.getMinutes() + ':' + now.getSeconds();
  
  // Set the input value to the current time
  document.getElementById("time").value = formattedTime;
</script>
</body>
</html>