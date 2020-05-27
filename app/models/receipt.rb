class Receipt < ApplicationRecord
    belongs_to :bank_account
    belongs_to :retailer

    def customer_first_name
        self.bank_account.customer.first_name
    end

    def customer_last_name
        self.bank_account.customer.last_name 
    end

    def retailer_name
        self.retailer.name 
    end

    def account_type
        self.bank_account.type_of_account
    end

    def item_list
        self.items.split
    end

end
