class Receipt < ApplicationRecord
    belongs_to :bank_account
    belongs_to :retailer
end
