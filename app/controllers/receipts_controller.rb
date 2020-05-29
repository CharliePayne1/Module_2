class ReceiptsController < ApplicationController
    before_action :set_receipt, only: [:show, :edit, :update]

    def index
        @receipts = Receipt.all
    end

    def show
    end

    def new
        @receipt = Receipt.new
    end

    def create
        @receipt = Receipt.create(receipt_params)
        if @receipt.sufficient_funds
            if
            @receipt.total_amount <= @receipt.bank_account.funds 
            @receipt.bank_account.funds -= @receipt.total_amount
            @bank.bank_account.funds
            else
            @receipt.bank_account.overdraft = ((@receipt.bank_account.overdraft + @receipt.bank_account.funds) - @receipt.total_amount)
            @receipt.bank_account.funds = 0
            @receipt.bank_account.overdraft
            @receipt.bank_account.save
            end
            redirect_to @receipt
        else
            flash[:error] = "If you ain't got no money, take yo' broke a$$ home! - Fergie, 2006"
            redirect_to @receipt.retailer
        end
    end

    def edit
    end

    def update
        @receipt.update(receipt_params)
        redirect_to @receipt
    end

    private 

    def receipt_params
        params.require(:receipt).permit!
    end

    def set_receipt
        @receipt = Receipt.find(params[:id])
    end 
end
