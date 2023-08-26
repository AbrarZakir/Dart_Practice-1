
abstract class Account {
  int accountNumber;
  double balance;
  Account(this.accountNumber,this.balance);
  void deposit(double amount) {
    balance += amount;
    print("Deposited Amount: $amount\nCurrent Balance: $balance");
  }
  void withdraw(double amount) {
    balance -= amount;
  }
}


class SavingsAccount extends Account {
  double interestRate;
  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);
  @override
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      balance += balance * interestRate;
      print("Amount withdrawn: $amount\nCurrent Balance: $balance");
    }
    else{
      print("Not enough Balance.");
    }
  }
}


class CurrentAccount extends Account {
  double overdraftLimit;
  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);
  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
      print("Amount withdrawn: $amount\nCurrent Balance: $balance");
    }
    else {
      print("Insufficient Funds");
    }
  }
}


void main() {
  SavingsAccount savings_account = SavingsAccount(825295845, 600000, 0.09);
  savings_account.deposit(45566);
  savings_account.withdraw(67000);

  CurrentAccount current_account = CurrentAccount(976754023, 104555, 20000);
  current_account.deposit(19000);
  current_account.withdraw(2234);

}