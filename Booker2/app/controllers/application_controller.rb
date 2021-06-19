class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys:[:name])
    devise_parameter_sanitizer.permit(:sign_up, keys:[:email,:name])
  end

  def book_params
    params.require(:book).permit(:title,:body)
  end

  def user_params
    params.require(:user).permit(:title, :email, :profile_image, :introduction)
  end
end
