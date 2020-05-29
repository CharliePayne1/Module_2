class RetailersController < ApplicationController
    before_action :set_retailer, only: [:show, :edit, :update, :show_all]

    def index
        @retailers = Retailer.all
    end

    def show
        @receipt = Receipt.new
    end

    def edit
    end

    def update
        @retailer.update(retailer_params)
            if @retailer.valid?
            redirect_to @retailer
            else 
            render :edit
        end
    end

    def show_all
    end

    private 

    def retailer_params
        params.require(:retailer).permit!
    end


    def set_retailer
        @retailer = Retailer.find(params[:id])
    end 

end
