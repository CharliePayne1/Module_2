class ApplicationController < ActionController::Base
    # before_action :define_customer, :authenticate

    # def authenticate
    #     if session[:customer_id] == nil
    #       redirect_to '/login'
    #     end
    # end

    # def define_user
    #     @customer = Customer.find_by(id: session[:customer_id])
    # end

end
