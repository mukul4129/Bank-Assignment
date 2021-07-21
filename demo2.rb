
class Account
    #read the name and balance variables
    #to use the reader, the attributes need to be symbols!
    attr_reader :name, :balance, :pin
    #method to set the values for name and balance
    #balance is an optional variable, if balance isn't given a value, then 100 will be provided
    def initialize (name, balance=100, pin)
        @name = name
        @balance = balance
        @pin = pin
    end

    #stating public method
    public
    def display_balance (pin_number)
        #ternary expression
        puts pin_number == pin ? "Balance $#{balance}." : pin_error
    end

    #public method
    public
    def withdraw (pin_number, amount)
        #checking if the supplied pin number is correct
        if pin_number == pin
            #perform maths
            @balance -= amount
            #display new amount and withdrawn amount
            puts "Withdrew #{amount}, balance is $#{@balance}"
        else
            pin_error
        end
    end

    #public method
    public
    def deposit (pin_number, amount)
        if pin_number == pin
            #perform maths
            @balance += amount
            #display new amount and deposit amount
            puts "Deposited #{amount}, balance is $#{@balance}"
        else
            pin_error
        end
    end

    #private method
    private
    def pin_error
        return "Access denied: Incorrect pin"
    end
end