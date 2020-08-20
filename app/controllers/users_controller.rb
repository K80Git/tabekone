class UsersController < ApplicationController
  def index
    @users = User.includes(:user).order("created_at DESC")
  end

  def show
    if user_signed_in?
      @name = current_user.name
      @reviews = current_user.reviews
      @groups = Group.all
      @recoGroup = GroupUser.where(user_id: current_user.id)
      @array = @recoGroup.map { |h| h[:group_id] }
      @groupsName = @groups.map { |h| h[:name] }
      @allReview = Review.all
    else
      redirect_to reviews_path()
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :adress, :age, :sex, :likeTast, :washoku, :yousyoku, :tyuuka, :ethnic, :meat, :fish, :vegetable, :Al, :Sw, :cp)
  end

end
