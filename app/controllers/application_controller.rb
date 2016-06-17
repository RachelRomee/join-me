class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!, if: :needs_sign_in?
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(user)
    listings_path
  end

  protected

    def needs_sign_in?
      !(devise_controller? || request.path == root_path)
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender, :age, :city, :description, :photo])
    end
end
