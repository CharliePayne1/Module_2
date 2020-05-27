class BankAccount < ApplicationRecord
    belongs_to :customer
    has_many :receipts
    has_many :retailers, through: :receipts
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