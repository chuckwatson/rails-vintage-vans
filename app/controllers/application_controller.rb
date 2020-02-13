class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # Prevent CSRF attacks by raising an exception.
 # For APIs, you may want to use :null_session instead.
protect_from_forgery with: :exception, prepend: true
before_action :configure_permitted_parameters, if: :devise_controller?

def home
 render ‘layouts / home’
 end

protected

 def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :avatar) }
  devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :current_password, :avatar) }
end

end


