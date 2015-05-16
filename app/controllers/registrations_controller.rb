# app/controllers/users/registrations_controller.rb

class Users::RegistrationsController < Devise::RegistrationsController
    before_filter :update_sanitized_params, if: :devise_controller?

    def update_sanitized_params
       devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :email,   :password, :password_confirmation, :location)}
    end
end