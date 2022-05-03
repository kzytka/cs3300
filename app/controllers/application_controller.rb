class ApplicationController < ActionController::Base
    before_action :update_allowed_parameters, if: :devise_controller?

    protected
  
    def update_allowed_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :about_user, :name )}
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:about_user, :name, :email, :password, :password_confirmation, :current_password)}
    end
end