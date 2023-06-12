let senderBalance = 100000;
let receiverBalance = 0;

function sendMoney() {
  const receiverEmail = document.getElementById("receiver-email").value;
  const amount = Number(document.getElementById("sender-amount").value);
  if (amount > senderBalance) {
    alert("Insufficient balance");
    return;
  }
  if (receiverEmail === "receiver@example.com") {   
    senderBalance -= amount;
    receiverBalance += amount;
    document.getElementById("sender-balance").textContent = "$" + senderBalance;
    document.getElementById("receiver-balance").textContent = "$" + receiverBalance;
    animateMoney(amount);
  } else {
    alert("Invalid receiver email");
  }
}

function animateMoney(amount) {
  const senderWallet = document.querySelector(".sender-wallet");
  const receiverWallet = document.querySelector(".receiver-wallet");
  const moneyElement = document.createElement("div");
  moneyElement.classList.add("money");
  moneyElement.textContent = "$" + amount;
  senderWallet.appendChild(moneyElement);
  const senderRect = senderWallet.getBoundingClientRect();
  const receiverRect = receiverWallet.getBoundingClientRect();
  const xDistance = receiverRect.left - senderRect.left;
  const yDistance = receiverRect.top - senderRect.top;
  moneyElement.style.transform = `translate(${xDistance}px, ${yDistance}px)`;
  moneyElement.style.opacity = 0;
  moneyElement.addEventListener("transitionend", function() {
    moneyElement.remove();
  });
}

 
  function changeButton(id) {
    const payBtn = document.getElementById(`payBtn-${id}`);
    payBtn.innerText = 'PAID';
    payBtn.disabled = true;
  }

/**
 * 
 */