class ApplicationController < ActionController::Base
  before_action :authenticate_customer!
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email])
  end

  protected
  
  def after_sign_in_path_for(resource)
    new_customer_session_path(resource)
  end

  def after_sign_up_path_for(resource)
    new_customer_registration_path(resource)
  end
  
  def after_sign_out_path_for(resource)
     homes_top_path
  end

   private
end
