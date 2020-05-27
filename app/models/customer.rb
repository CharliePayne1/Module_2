class Customer < ApplicationRecord
    has_many :bank_accounts
    has_many :retailers, through: :bank_accounts

    attr_accessor :occupation
    
    validates :first_name, presence: true
    validates :last_name, presence: true 
    validates :age, numericality: { greater_than: 16 }
    
    before_save :uppercase_name
    
    def uppercase_name
        self.first_name = self.first_name.upcase
        self.last_name = self.last_name.upcase
    end 
    
    def full_name 
        "#{last_name}, #{first_name}" 
    end 

end
