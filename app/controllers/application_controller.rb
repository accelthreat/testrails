class ApplicationController < ActionController::Base

def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :handle, :email, :password)}
    #devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :handle, :email, :password, :current_password)}
  end
end
