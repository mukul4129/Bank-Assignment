require_relative 'account'
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
        @account.getAccountDetails
    end
    def getCustomerId
        @cid
    end
end



 






