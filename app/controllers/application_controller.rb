class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :cofigure_permitted_paramaters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.parmit(:sign_up, keys: [:name])
  end
end
