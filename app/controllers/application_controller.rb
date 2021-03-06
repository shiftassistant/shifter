class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            
            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :addr1, :addr2, :phone, :email, :bnum, :base_rate, :closing) }
        end
end
