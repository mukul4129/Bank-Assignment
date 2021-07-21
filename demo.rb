class Customer 

    attr_accessor :customername
    attr_reader :address
    def initialize( id, customername, address)
        @id = id
        @customername  = customername.capitalize
        @address  = address 
        #@customer = []
    end
    #def add_customer(a_cust)
    #    @customer << a_cust
    #end
    def to_s
        "Customer Id : #{@id} \n Name - #{@customername} Address - #{@address}."
    end  
end

class Account 
    def initialize(name, balance = 10000)
        @name      = name
        @balance   = balance
        #@account = []
    end
    #def add_account (a_account)
    #    @account << (a_account)
    #end
    def to_s
        "#{@name} have balance #{@balance}."
    end
end
#class Play 
   # def initialize(alldetails)
   # @alldetails = alldetails
   # end
#end


customer1 = Customer.new( 1,"mukul", "sukhliya")
customer2 = Customer.new(2, "sudhanshu", "aps")
customers = [customer1, customer2]
puts customers
#customers = Play.new("All details")
##customer = Customer.new
##customer.add_customer(customer1)
#customer.add_customer(customer2)
#customers.play


account1 = Account.new("shikhar", 15000)
account2 = Account.new("sudhanshu", 20000)
accounts = [account1, account2]
puts accounts
#accounts = Play.new("Available Balance")
#acccount = Account.new
#account.add_account(account1)
#account.add_account(account2)
#accounts.play



