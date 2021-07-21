require_relative 'customer'
require_relative 'Bank'
require_relative 'utility_module'
$customers = []
$account_numbers = []
$bank_ids = []
class Account 

    attr_reader :customer, :history, :accNo
    def initialize (accHolderName, balance)
        @accHolderName = accHolderName
        @balance = balance
        @customer = customer
        @history = [@balance]
        @accNo = Utility.generate_acc_no
    end

    def add_customer(customer_obj)
        $customers << customer_obj
    end
    
    def getAccountDetails
        puts "\nAccount Details"
        puts "----------------------"
        puts "Account Number    --  #{$account_numbers.last}"
        puts "Account Holder Name --#{@accHolderName}"
        print "Account Balance  -- #{@balance}"
    end

    def bal
        puts "your balance is #{@balance}"
    end

    def his
        puts "this is your history"
        puts history
    end

    def dep
        puts "how much would you like to deposit"
        input = ''
        input = gets.chomp.to_i
        puts "you are depositing #{input}"
        @balance += input
        @history << input
    end

    def withd
        puts "how much would you like to withdraw?"
        input  = ''
        input = gets.chomp.to_i
        if @balance < input
            error
            withd
        else
            puts "you have chosen to withdraw #{input}"
            @balance -= input
            @history << -input
        end
    end

    def exit 
        puts "Thank you"
    end

    def error
        puts "error invalid"
    end

    def clear
        system("clear")
    end

    def welcome
        puts "\nwelcome to the bank, please enter 'b' for balance, 'h' for history, 'w' for withdrawn, 'd', 'c' for continue for deposit 'e' for exit:"
        response = gets.chomp.downcase

        case response 
            when "b"
                bal
                welcome
            when "w"
                withd
                welcome
            when "e"
                exit
            when "h"
                his
                welcome
            when "d"
                dep
                welcome
            when "d"
                cont    
            else
                clear
            end
    end    

    def cont
        welcome
    end  
end
#account1 = Account.new("abc1", "Mukul", 10000)

#account1.welcome

