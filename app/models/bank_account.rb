class BankAccount < ApplicationRecord
    belongs_to :customer
    has_many :receipts
    has_many :retailers, through: :receipts
end
