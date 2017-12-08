const amountS = document.querySelector('.amountS');
const amountC = document.querySelector('.amountC');
const balanceS = document.querySelector('.balanceS');
const balanceC = document.querySelector('.balanceC');
const withdrawS = document.querySelector('.withdrawS');
const depositS = document.querySelector('.depositS');
const withdrawC = document.querySelector('.withdrawC');
const depositC = document.querySelector('.depositC');
const body = document.querySelector('body');
let moneyOnSavings = 0;
let moneyOnChecking = 0;


function depositOnSavings () {
	if (moneyOnSavings >= 0 || moneyOnChecking >= 0) {
	body.classList.add('money');
	}
	moneyOnSavings = Number(amountS.value) + moneyOnSavings;
	balanceS.textContent = moneyOnSavings;
	amountS.value = "";
}

function depositOnChecking () {
	if (moneyOnSavings >= 0 || moneyOnChecking >= 0) {
	body.classList.add('money');
	}
	moneyOnChecking = Number(amountC.value) + moneyOnChecking;
	balanceC.textContent = moneyOnChecking;
	amountC.value = "";

}

function withdrawOnSavings () {
	if (moneyOnSavings - Number(amountS.value) >= 0) {
	moneyOnSavings = moneyOnSavings - Number(amountS.value);
	balanceS.textContent = moneyOnSavings;
	amountS.value = "";
		if(moneyOnSavings == 0) {
			body.classList.add('danger');
		}
    } else {
    amountS.value = "";
	amountS.placeholder = "NOT ENOUGH MONEY!!!";
	body.classList.add('danger');
	}
}

function withdrawOnChecking () {
	if (moneyOnChecking - Number(amountC.value) >= 0) {
	moneyOnChecking = moneyOnChecking - Number(amountC.value);
	balanceC.textContent = moneyOnChecking;
	amountC.value = "";
		if(moneyOnSavings == 0) {
			body.classList.add('danger');
		}
	} else if ((moneyOnChecking + moneyOnSavings) - Number(amountS.value) >= 0) {
    moneyOnChecking = moneyOnChecking - Number(amountC.value);
    moneyOnSavings = moneyOnSavings + moneyOnChecking;
    moneyOnChecking = 0;
	balanceC.textContent = moneyOnChecking;
	balanceS.textContent = moneyOnSavings;
	amountS.value = "";
	amountC.value = "";
    } else {
		amountC.value = "";
		amountC.placeholder = "NOT ENOUGH MONEY!!!";
		body.classList.add('danger');
	}
}

depositS.addEventListener('click', depositOnSavings);
depositC.addEventListener('click', depositOnChecking);

withdrawS.addEventListener('click', withdrawOnSavings);
withdrawC.addEventListener('click', withdrawOnChecking);


