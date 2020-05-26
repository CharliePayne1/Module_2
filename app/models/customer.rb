class Customer < ApplicationRecord
    has_many :bank_accounts
    has_many :retailers, through: :bank_accounts
end
