class ReceiptsController < ApplicationController
    def index
        @receipts = Receipt.all
    end

    def show
        @receipt = Receipt.find(params[:id])
    end

    def new
        @receipt = Receipt.new
    end

    def create
        @receipt = Receipt.create(receipt_params)
        redirect_to @receipt
    end

    def edit
        @receipt = Receipt.find(params[:id])
    end

    def update
        @receipt = Receipt.find(params[:id])
        @receipt.update(receipt_params)
        redirect_to @receipt
    end

    private 

    def receipt_params
        params.require(:receipt).permit!
    end
end
