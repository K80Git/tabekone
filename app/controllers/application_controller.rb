class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :age, :sex, :likeTast, :washoku, :yousyoku, :tyuuka, :ethnic, :meat, :fish, :vegetable, :Al, :Sw, :cp])
  end
end
