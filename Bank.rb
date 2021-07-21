require_relative 'customer'
require_relative 'account'

class Bank
    attr_reader :history
    def initialize(bank_id, balance)
        @bank_id = bank_id
        @balance = balance
        @history = [@balance]
    end

    def allDetails
        for x in $customers do 
            puts x.custDetails
        end
    end
    def bankDetails
        puts "#{bank_id}"
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

    def callCustomerDetails
        puts "welcome to the bank, please enter 'c' for Customer Details, 'b' for Bank Details 'e' for exit:"
        response = gets.chomp.downcase

        case response 
            when "c"
                allDetails
                callCustomerDetails
            when "b"
                bankDetails
            when "e"
                exit    
            else
                clear
            end
    end    

    def cont
        callCustomerDetails
    end    
end


