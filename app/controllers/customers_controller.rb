class CustomersController < ApplicationController
    before_action :set_customer, only: [:show, :edit, :update]

    def login
    end

    def logout
        session[:customer_id] = nil
        redirect_to '/login'
    end

    def index
        @customers = Customer.all
    end

    def show
    end

    def new
        @customer = Customer.new
    end

    # def create
    #     @customer = Customer.find_by(customer_params) #need to find an attribute to use as a username
    #     if @customer #found the customer
    #         if @customer.authenticate # need to define authenticate and decide what to use as a password
    #             session[:customer_id] = @customer.id
    #             redirect_to @customer
    #         else
    #             flash[:errors] = ["Password Invalid"]
    #             redirect_to '/login'
    #         end
    #     else #not found the customer
    #         @customer = Customer.create(customer_params)
    #         if @customer.valid? #if the new customer is valid, create a new customer
    #             session[:customer_id] = @customer.id
    #             redirect_to @customer
    #         else
    #             flash[:errors] = @customer.error.full_messages
    #             redirect_to '/login'
    #         end
    #     end
    # end

    def edit
    end

    def update
        if @customer.update(customer_params)
        flash[:notice] = "You have successfully updated your account."
            redirect_to @customer
        else 
            render 'edit'
        end 
    end 

    private 

    def customer_params
        params.require(:customer).permit!
    end

    def set_customer
        @customer = Customer.find(params[:id])
    end 

end
