const amountS = document.querySelector('.amountS');
const amountC = document.querySelector('.amountC');
let balanceS = document.querySelector('.balanceS');
balanceS = balanceS.textContent;
let balanceC = document.querySelector('.balanceC');
balanceC = balanceC.textContent;
const withdrawS = document.querySelector('.withdrawS');
const depositS = document.querySelector('.depositS');
const withdrawC = document.querySelector('.withdrawC');
const depositC = document.querySelector('.depositC');
const body = document.querySelector('body');
let moneyOnAccount = 0;

function savingsAccountUsed() {
	depositMoney(amountS.value, moneyOnSavings, balanceS);
}

function checkingAccountUsed() {
	depositMoney(amountC.value, moneyOnChecking, balanceC);
}


function depositMoney(userInput, moneyOnAccount, balance) {
	moneyOnAccount = Number(userInput) + moneyOnAccount;
	console.log(userInput);
	balance = moneyOnAccount;
	if (totalBalance > 0) {
	body.classList.remove('danger');
	body.classList.add('money');
	} else {
		body.classList.add('danger');
	}
}

function withdrawMoney(userInput, moneyOnAccount, balance) {
	if (moneyOnAccount - userInputSaving >= 0) {
	moneyOnAccount = moneyOnAccount - userInput;
	balance= moneyOnAccount;
    } else if ((moneyTotal - userInput) >= 0) {
    moneyTotal = moneyOnAccount - userInputChecking;
    moneyOnAccount = 0;
	balance.textContent = moneyOnAccount;
	} else {
    renewPage();
	body.classList.add('danger');
	}
		if(totalBalance == 0) {
			body.classList.add('danger');
		}
	
}
function renewPage () {
	balance= moneyOnAccount;
	amount = "";
	placeholder = "NOT ENOUGH MONEY!!!";
}

depositS.addEventListener('click', savingsAccountUsed);
depositC.addEventListener('click', checkingAccountUsed);
/*
withdrawS.addEventListener('click', withdrawOnSavings(0, userInputSaving));
withdrawC.addEventListener('click', withdrawOnChecking(userInputChecking, 0));*/


