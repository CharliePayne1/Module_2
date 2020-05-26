class RetailersController < ApplicationController
    def index
        @retailers = Retailer.all
    end

    def show
        @retailer = Retailer.find(params[:id])
    end

    def edit
        @retailer = Retailer.find(params[:id])
    end

    def update
        @retailer = Retailer.find(params[:id])
        @retailer.update(retailer_params)
            if @retailer.valid?
            redirect_to @retailer
            else 
            render :edit
        end
    end

    private 

    def retailer_params
        params.require(:retailer).permit!
    end

end
