# app/controllers/users/registrations_controller.rb

class Users::RegistrationsController < Devise::RegistrationsController
    before_filter :update_sanitized_params, if: :devise_controller?

    def update_sanitized_params
       devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email,   :password,
        :password_confirmation, :location,
        :first_name, :last_name, :avatar )}

       devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:email, :password,
        :password_confirmation, :location,
        :first_name, :last_name, :avatar, :current_password )}
    end
end