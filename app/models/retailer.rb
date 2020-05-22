class Retailer < ApplicationRecord
    has_many :receipts
    has_many :bank_accounts, through: :receipts
end
