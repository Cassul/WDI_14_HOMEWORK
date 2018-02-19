// It should have the following methods...

// withdraw, which should decrease the amount of money by some input
// deposit, which should increase the amount of money by some input
// showBalance, which should print the amount of money in the bank to the console.
// The Atm class has a transactionHistory property which keeps track of the withdrawals and deposits made to the account.
// Make sure to indicate whether the transaction increased or decreased the amount of money in the bank.
class Atm {
  constructor(type, money) {
    this.type = type;
    this.money = money;
    this.transactionHistory = [];
  }

  withdraw(amount) {
    this.history.push("withdrew " + amount);
    return (this.money -= amount);
  }

  deposit(amount) {
    this.history.push("deposited " + amount);
    return (this.money += amount);
  }

  showBalance() {
    return `your balance is ${this.money}`;
  }
}

var atm = new Atm("usd", 100);
console.log(atm.withdraw(80));
console.log(atm.deposit(59));
console.log(atm.showBalance());
console.log(atm.transactionHistory());