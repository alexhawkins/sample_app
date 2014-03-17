class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if amount <= @balance
      if pin_number == pin 
        @balance -= amount
        puts "Withdrew $#{amount}. New balance: $#{@balance}."
      else
        puts pin_error
      end
    else
      insuf_funds
    end
  end

  def deposit(pin_number, amount)
    if pin_number == @pin
       @balance += amount
       puts "Desposited $#{amount}. New balance: $#{@balance}."
     else
       pin_error
     end
  end

  def insuf_funds
    puts "Insufficient Funds. Your balance is $#{@balance}"
  end

  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end


class Checking < Account
  attr_accessor :check_balance
  def initialize(pin_number, balance=@balance)
    super
    @check_balance = @balance - 200
  end

  def check_account
   @check_balance
  end
end

class Savings < Account

  attr_accessor :savings_balance
  def initialize(name, balance=@balance)
    super
    @savings_balance = @balance - 400
  end

  def savings_account
    @savings_balance
  end
end


my_account = Account.new("Eric", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 1_000_000)
my_account.deposit(1234, 2_000_000)
my_account.display_balance(1234)
my_account.withdraw(1234,1_234_234)
my_account.display_balance(1234)

check_account = Checking.new(1232, 1_000)
savings_account = Savings.new(1234, 1_000)

puts check_account.check_account
puts savings_account.savings_account