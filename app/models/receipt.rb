class Receipt < ApplicationRecord
    belongs_to :bank_account
    belongs_to :retailer
  
   validates :bank_account, presence: true 
   validates :total_amount, presence: true, numericality: true
   validate :sufficient_funds

    # TRANSACTION_TYPES = ["withdraw", "deposit"]
    # include transaction_type?
    # validates :transaction_type, presence: true, inclusion: { in: TRANSACTION_TYPES }
    # should you add a transaction number, with presence true, uniqueness true

    def retailer_name
        self.retailer.name 
    end

    def customer_name
        self.bank_account.customer.full_name
    end

    def account_type
        self.bank_account.type_of_account
    end

    def item_list
        self.items.split
    end

    def sufficient_funds
        self.total_amount < self.bank_account.available_funds
    end 
end
