class BankAccount < ApplicationRecord
    belongs_to :customer
    has_many :receipts
    has_many :retailers, through: :receipts

    validates :customer, presence: true 
    validates :account_number, presence: true, uniqueness: true 
    validates :funds, presence: true, numericality: true 

    before_validation :load_defaults 
        
    def load_defaults
       if self.new_record? # Returns true if this object hasn’t been saved yet — that is, a record for the object doesn’t exist yet; otherwise, returns false
        self.funds = 0.00
        end
    end 

end

# Show page 
# available_funds - funds + overdraft
# big_spender customer occupation with highest available funds
# Delete the bank account 
# View your 10 most recent transactions link to most recent receipts 
# Where have they spent the most money?
# Average transaction value
# Average basket size 
# Link to customer profile 
# Edit the overdraft (increasing) & available funds by paying money in/ withdrawing money 
# Overdraft can only increase
# Available funds can increase/decrease 