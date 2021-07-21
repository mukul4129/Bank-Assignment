require_relative 'account'
require_relative 'customer'
module Utility
    def self.generate_acc_no
        acc_no = rand(1000000..9999999).to_s

        if not $account_numbers.include? acc_no
            $account_numbers << acc_no    
        else
            generate_acc_no     
        end
    end 

    def self.generate_bank_id
        bank_id = ""
        for i in 1..5 do
            bank_id += rand(1..9).to_s
        end
        if not $bank_ids.include? bank_id
            $bank_ids << bank_id    
        end
    end 
end
    

 
  