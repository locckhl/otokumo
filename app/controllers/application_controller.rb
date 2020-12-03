class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

      protected
         def configure_permitted_parameters
             devise_parameter_sanitizer.permit :sign_up, keys: [:name, :age, :avatar]
             devise_parameter_sanitizer.permit :account_update, keys: [:name, :age, :avatar]
         end
         
    helper_method :admin
    
    def admin
        if user_signed_in?
          current_user.isAdmin
        end
    end
end
