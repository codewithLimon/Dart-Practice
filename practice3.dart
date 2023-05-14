import 'dart:io';

class BankAccount {
  String accountNumber;
  String accountHolder;
  double balance;
  double interestRate;

  BankAccount(
      this.accountNumber, this.accountHolder, this.balance, this.interestRate);


  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print("Not enough balance to withdraw");
      exit(0);
    } else {
      balance -= amount;
    }
  }

  void calculateInterest() {
    num interest = balance * interestRate;
    balance += interest;
  }

  void printAccountDetails() {

    print("accountNumber: $accountNumber");
    print("accountHolder: $accountHolder");
    print("balance: $balance");
    print("interestRate: $interestRate");
  }
}

void main() {
  BankAccount myBankAccount = BankAccount("110", "Jon Doe", 10000.0, 0.05);
  print("initial account details: ");
  myBankAccount.calculateInterest();
  myBankAccount.printAccountDetails();

  print("\n");

  print("account details after deposit of 1500: ");
  myBankAccount.deposit(1500);
  myBankAccount.calculateInterest();
  myBankAccount.printAccountDetails();

  print("\n");

  print("account balance after withdraw of 20000:");
  myBankAccount.withdraw(20000);
  myBankAccount.calculateInterest();
  myBankAccount.printAccountDetails();
}
