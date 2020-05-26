class Receipt < ApplicationRecord
    belongs_to :bank_account
    belongs_to :retailer

    validates :bank_account, presence: true 
    validates :total_amount, presence: true, numericality: true

    # TRANSACTION_TYPES = ["withdraw", "deposit"]
    # include transaction_type?
    # validates :transaction_type, presence: true, inclusion: { in: TRANSACTION_TYPES }
    # should you add a transaction number, with presence true, uniqueness true 

end
