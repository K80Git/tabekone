class Users::RegistrationsController < Devise::RegistrationsController
  
  def index
    @users = User.includes(:user).order("created_at DESC")
  end

  def new
    @user = User.new
  end

  def create
    redirect_to user_path(current_user.id)
  end

  # GET /resource/edit
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = Uroup.find(params[:id])
    User.create(user_params)
    redirect_to user_path(current_user.id)
  end

  private
  def user_params
    params.require(:user).permit(:name, :address, :age, :sex, :likeTast, :washoku, :yousyoku, :tyuuka, :ethnic, :meat, :fish, :vegetable, :Al, :Sw, :cp)
  end
  
end
