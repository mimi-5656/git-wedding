class ApplicationController < ActionController::Base
  before_action :authenticate_any!, except: [:top, :about, :show, :edit, :new]

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :password])
   end

  def after_sign_in_path_for(resource)
    about_path
  end

  def after_sign_out_path_for(resource)
    wedding_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :password])
  end
end
