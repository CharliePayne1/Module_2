class Customer < ApplicationRecord
    has_many :bank_accounts, dependent: :destroy
    has_many :retailers, through: :bank_accounts
    
    validates :first_name, presence: true
    validates :last_name, presence: true 
    validates :occupation, presence: true
    validates :age, numericality: { greater_than: 16 }
    # validates :bank_accounts, presence: true
    
    
    # before_save :uppercase_name
    
    # def uppercase_name
    #     self.first_name = self.first_name.upcase
    #     self.last_name = self.last_name.upcase
    # end 
    
    def full_name 
        "#{last_name}, #{first_name}" 
    end 

    def account_types
        self.bank_accounts.map do |ba| 
            ba.type_of_account
            ba.funds
            ba.overdraft 
        end 
    end 

    # def account
    #     self.bank_accounts.type_of_account.first 
    # end 

    def my_funds
        self.bank_accounts.map {|ba| ba.funds }.first
    end 

    def my_overdraft
        self.bank_accounts.map {|ba| ba.overdraft}
    end 

    def my_account_number
        self.bank_accounts.map {|ba| ba.account_number } 
    end 

    def my_sort_code
        self.bank_accounts.map {|ba| ba.sort_code}
    end 

    #If a customer has no bank accounts, delete the customer
    def no_account
        if self.bank_accounts.blank?
           self.destroy
        end
    end

    
end
