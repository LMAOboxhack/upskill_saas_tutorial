class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  
  # If a devise controller is being called (aka signup is occuring), 
  # run the configure_permitted_parameters function before calling the controller.
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
    # This function whitelists the form fields so they can be accessed by Rails (security feature)
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:stripe_card_token, :email, :password, :password_confirmation) }
    end
end