class BankAccount {
  static int accountID = 0;
  late double balance;
  //first constractor that sets the balance with value
  BankAccount(this.balance) {
    accountID++;
  }
  //second constractor that sets the balance with 0
  BankAccount.create() {
    balance = 0;
    accountID++;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Success withdraw");
      print("New balance = $balance");
    } else {
      print("Insufficiant balance");
    }
  }

  deposit(double ammount) {
    balance += ammount;
    print("Success deposit");
    print("New balance = $balance");
  }

  void veiw() {
    print("Account Id: $accountID");
    print("Account balance: $balance");
  }
}

void main() {
  BankAccount customer1 = BankAccount(50); //set balance with 50
  customer1.withdraw(
    100,
  ); //try to withdraw with 100 => gives Insufficiant balance
  customer1.deposit(100); //deposite an amount of 100
  customer1.withdraw(
    75,
  ); //try to withdraw again but with 75 => gives Success withdraw
  customer1.veiw(); //show all acount data
}
