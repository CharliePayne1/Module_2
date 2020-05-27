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

end
