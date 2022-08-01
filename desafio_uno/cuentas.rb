lass User
  def initialize(user_name, accounts)
    raise RangeError, "Se debe tener al menos una cuenta bancaria." if accounts.count == 0
    @user_name = user_name
    @accounts = accounts
  end

  def total_balance
    total = 0
    for account in @accounts
      total += account.balance
    end
    display_balance(total)
  end

  def display_balance(balance)
    puts "Tu saldo actual es de: $#{balance}"
  end
end

class BankAccount
  attr_accessor :balance
  attr_reader :account_number, :name_bank

  def initialize(name_bank, account_number, balance=0)
    @name_bank = name_bank
    @account_number = account_number
    @balance = balance
  end

  def transference(amount, account)
    self.balance -= amount
    account.balance += amount
    successful_transfer(account)
  end

  def successful_transfer(account)
    puts "TRANSFERENCIA EXITOSA"
    puts "##########################"
    puts "Desde cuenta: #{@account_number}-#{@name_bank}"
    puts "Saldo: #{@balance}"
    puts "---"
    puts "A cuenta: #{account.account_number}-#{account.name_bank}"
    puts "Saldo: #{account.balance}"
    puts "##########################"
  end
end

account1 = BankAccount.new("Estado", 4444, 5000)
account2 = BankAccount.new("BCI", 8888, 5000)

account1.transference(5000, account2)

user1 = User.new("Marcel", [account1, account2])
puts user1.total_balance

user2 = User.new("Leon", [])
