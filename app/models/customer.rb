class Customer < ApplicationRecord
    has_many :bank_accounts
    has_many :retailers, through: :bank_accounts
    
    validates :first_name, presence: true
    validates :last_name, presence: true 
    validates :age, numericality: { greater_than: 16 }
    validates :occupation, presence: true
    
    def full_name 
        "#{last_name}, #{first_name}" 
    end 

    def account_types
        self.bank_accounts.select {|ba| ba.type_of_account}
    end 

    def account
        self.bank_accounts.type_of_account
    end 

    def my_funds
        self.bank_accounts.funds
    end 

    def my_overdraft
        self.bank_accounts.overdraft
    end 

    def my_account_number
        self.bank_accounts.account_number
    end 

    def my_sort_code
        self.bank_accounts.sort_code
    end 
    
end
