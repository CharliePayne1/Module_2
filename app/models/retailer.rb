class Retailer < ApplicationRecord
    has_many :receipts
    has_many :bank_accounts, through: :receipts
    has_many :customers, through: :bank_accounts

    validates :sector, presence: true 
    validates :annual_turnover, presence: true 
    validates :established, presence: true 
    validates :employees, presence: true 

    def most_recent
        self.receipts.max_by(3) {|receipt| receipt.created_at}
    end

    def annual_turnover_from_receipts
        @revenue_from_receipts = self.receipts.sum {|receipt| receipt.total_amount}.to_f
        @percentage = @revenue_from_receipts / self.annual_turnover
        @percentage.round(2)
    end

    def annual_turnover_from_recent_receipts
        @revenue_from_most_recent = self.most_recent.sum {|receipt| receipt.total_amount}.to_f
        @percentage = @revenue_from_most_recent / self.annual_turnover
        @percentage.round(2)
    end

end
