class RetailersController < ApplicationController
    before_action :set_retailer, only: [:show, :edit, :update]

    def index
        @retailers = Retailer.all
    end

    def show
    end

    def new
        @retailer = Retailer.new
    end

    def create
        @retailer = Retailer.create(retailer_params)
        redirect_to @retailer
    end

    def edit
    end

    def update
        @retailer.update(retailer_params)
        redirect_to @retailer
    end

    private 

    def retailer_params
        params.require(:retailer).permit!
    end

    def set_retailer
        @retailer = Retailer.find(params[:id])
    end 
end
