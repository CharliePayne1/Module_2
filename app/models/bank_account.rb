class BankAccount < ApplicationRecord
    belongs_to :customer
    has_many :receipts, dependent: :destroy
    has_many :retailers, through: :receipts

    validates :customer, presence: true 
    validates :account_number, presence: true, uniqueness: true 
    validates :funds, presence: true, numericality: true 

    # before_validation :load_defaults 
        
    # def load_defaults
    #    if self.new_record? # Returns true if this object hasn’t been saved yet — that is, a record for the object doesn’t exist yet; otherwise, returns false
    #     self.funds = 0.00
    #     end
    # end 

     # 5 most recent transactions 
    def recent_transactions
        self.receipts.max_by(5) {|receipt| receipt.created_at}
    end

    # Average transaction value
    def avrg_transaction
       total_transaction = self.receipts.sum {|receipt| receipt.total_amount}
       number_of_transactions = self.receipts.size.to_i
       average = total_transaction / number_of_transactions
    end

    def retailer_spent_most_with
        transaction = self.receipts.max_by {|receipt| receipt.total_amount}
        # amount = transaction.total_amount
        # retailer_name = transaction.retailer.name
    end

    
end


# big_spender customer occupation with highest available funds
# Delete the bank account 
# Where have they spent the most money?
# Edit the overdraft (increasing) & available funds by paying money in/ withdrawing money 
# Overdraft can only increase
# Available funds can increase/decrease 