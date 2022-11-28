class ApplicationController < ActionController::Base

  #before_action :authenticate_host!,only: [:new,:about, :show, :edit]

  before_action :configure_permitted_parameters, if: :devise_controller?

  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :password, :firstname, :kana_first_name, :lastname, :kana_last_name])
  # end

  def after_sign_up_path_for(resource)
    about_path
  end


  protected

  def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :firstname, :kana_firstname, :lastname, :kana_lastname])
  end
end
