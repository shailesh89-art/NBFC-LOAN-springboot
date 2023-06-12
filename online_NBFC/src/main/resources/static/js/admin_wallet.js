var walletAmount = 100; // Initial wallet amount

function updateWalletAmount(amount) {
  var walletAmountElement = document.getElementById("walletAmount");
  walletAmount += amount;
  walletAmountElement.innerText = "$" + walletAmount.toFixed(2);
}

function addAmount() {
  var addAmountInput = document.getElementById("addAmount");
  var amount = parseFloat(addAmountInput.value);
  
  if (isNaN(amount) || amount <= 0) {
    alert("Please enter a valid amount.");
    return;
  }
  
  updateWalletAmount(amount);
  
  // Clear the add amount input field
  addAmountInput.value = "";
}

function sendAmount() {
  var sendAmountInput = document.getElementById("sendAmount");
  var amount = parseFloat(sendAmountInput.value);
  
  if (isNaN(amount) || amount <= 0) {
    alert("Please enter a valid amount.");
    return;
  }
  
  if (amount > walletAmount) {
    alert("Insufficient funds in the wallet.");
    return;
  }
  
  // Decrease the wallet amount
  updateWalletAmount(-amount);
  
  // Perform any other actions (e.g., send the amount to the server)
  // ...
  
  // Clear the send amount input field
  sendAmountInput.value = "";
}/**
 * 
 */