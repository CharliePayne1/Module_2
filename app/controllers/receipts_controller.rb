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
        redirect_to @receipt.retailer
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
