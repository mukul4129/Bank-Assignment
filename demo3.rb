class Account
    attr_reader :customers

    def initialize(accNo, accHolderName, balance)
        @accNo = accNo
        @accHolderName = accHolderName
        @balance = balance
        @customers = []
    end
    
    def add_customer(customer)
        @customers << customer
    end    

    def getAccDetails
        puts "\nAccount Details"
        puts "----------------------"
        puts "Account Number    --  #{@accNo}"
        puts "Account Holder Name --#{@accHolderName}"
        print "Account Balance  -- #{@balance}"
    end    
end 

class Customer

    def initialize(cid, cname, caddr, account)
        @cid = cid
        @cname = cname
        @caddr = caddr
        @account = account
    end 
    

    def custDetails
        puts "\nCustomer Details"
        puts "----------------------"
        puts "Customer ID      #{@cid}"
        puts "Customer Name    #{@cname}"
        puts "Customer Address #{@caddr}"
        @account.getAccDetails
        
    end
end

acc1 = Account.new("abc123", "Mukul", 25000)
acc2 = Account.new("abc456", "Prav", 25000)
cust1 = Customer.new("C-101", "Mukul", "Ind", acc1)
cust2 = Customer.new("C-102", "Prav", "Gwl", acc2)
acc1.add_customer(cust1)
acc2.add_customer(cust2)

cust1.custDetails
cust2.custDetails












#class Customer 

 #   attr_accessor :customername
  #  attr_reader :address
  #  def initialize( id, customername, address, account_no)
  #      @id = id
  #      @customername  = customername.capitalize
  #      @address  = address 
   #     @account_no = account_no
  #      @account= []
        
  #  end
  #  def add_account (a_account)
  #      @account << (a_account)
  #  end
    
   ### def to_s
   #     "Customer Id : #{@id} \n Name - #{@customername} \n Address - #{@address} \n AccountNo - #{@account_no}."
  #  end  
#end
#customer1 = Customer.new( 1,"mukul", "sukhliya", 101)
#customer2 = Customer.new( 2, "sudhanshu", "aps", 102) 
#customer1.add_customer(customer1)
##customer2.add_customer(customer2)
#puts customer1.to_s
#puts customer2.to_s