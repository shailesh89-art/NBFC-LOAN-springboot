<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <title>Admin Wallet</title>
  <script src="js/admin_wallet.js"></script>
</head>
<body>

    
 

  <form action="admin_wallet" method="post">
  <label for="time">Current Time</label>
        <input type="text" name="time" id="time">
  <label for="addamount">Amount to Add:</label>
   <input type="text" id="addamount" name="amount" value="${e.id}">
  
  
   <a href=""><button type="submit" onclick="addAmount()">Add</button></a>
  
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
