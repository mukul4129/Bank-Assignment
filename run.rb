require_relative 'customer'
require_relative 'account'
require_relative 'bank'
require_relative 'utility_module'

account1 = Account.new("Mukul", 10000)
account2 = Account.new("Pranav", 15000)
cust1 = Customer.new("C-111", "Mukul", "Ind", account1)
cust2 = Customer.new("C-112", "Pranav", "Gwl", account2)
account1.add_customer(cust1)
account2.add_customer(cust2)



account1.welcome
bank1 = Bank.new(1,1000)
bank1.callCustomerDetails




#account1.generate_bank_id
##account1.generate_bank_id
#account1.generate_bank_id


#puts $account_numbers

#puts $bank_ids


