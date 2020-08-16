class UsersController < ApplicationController
  def index
    @users = User.includes(:user).order("created_at DESC")
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    @group1 = Group.find_by(id: 1)
    @group2 = Group.find_by(id: 2)
    @group3 = Group.find_by(id: 3)
    @group4 = Group.find_by(id: 4)
    @group5 = Group.find_by(id: 5)
    if user_params[:likeTast] == "1"
      @group1.users << current_user
      @group1.save
    elsif user_params[:likeTast] == "2"
      @group2.users << current_user
      @group2.save
    elsif user_params[:likeTast] == "3"
      @group3.users << current_user
      @group3.save
    elsif user_params[:likeTast] == "4"
      @group4.users << current_user
      @group4.save
    elsif user_params[:likeTast] == "5"
      @group5.users << current_user
      @group5.save
    end
    
    @group6 = Group.find_by(id: 6)
    if user_params[:washoku] == "1"
      @group6.users << current_user
      @group6.save
    end
    @group7 = Group.find_by(id: 7)
    if user_params[:yousyoku] == "1"
      @group7.users << current_user
      @group7.save
    end
    @group8 = Group.find_by(id: 8)
    if user_params[:tyuuka] == "1"
      @group8.users << current_user
      @group8.save
    end
    @group9 = Group.find_by(id: 9)
    if user_params[:ethnic] == "1"
      @group9.users << current_user
      @group9.save
    end

    @group10 = Group.find_by(id: 10)
    if user_params[:meat] == "1"
      @group10.users << current_user
      @group10.save
    end

    @group11 = Group.find_by(id: 11)
    if user_params[:fish] == "1"
      @group11.users << current_user
      @group11.save
    end

    @group12 = Group.find_by(id: 12)
    if user_params[:vegetable] == "1"
      @group12.users << current_user
      @group12.save
    end

    @group13 = Group.find_by(id: 13)
    @group14 = Group.find_by(id: 14)
    @group15 = Group.find_by(id: 15)
    if user_params[:Al] == "1"
      @group13.users << current_user
      @group13.save
    elsif user_params[:Al] == "2"
      @group14.users << current_user
      @group14.save
    elsif user_params[:Al] == "3"
      @group15.users << current_user
      @group15.save
    end

    @group16 = Group.find_by(id: 16)
    @group17 = Group.find_by(id: 17)
    @group18 = Group.find_by(id: 18)
    if user_params[:Sw] == "1"
      @group16.users << current_user
      @group16.save
    elsif user_params[:Sw] == "2"
      @group17.users << current_user
      @group17.save
    elsif user_params[:Sw] == "3"
      @group18.users << current_user
      @group18.save
    end

    @group19 = Group.find_by(id: 19)
    @group20 = Group.find_by(id: 20)
    @group21 = Group.find_by(id: 21)
    @group22 = Group.find_by(id: 22)
    @group23 = Group.find_by(id: 23)
    if user_params[:cp] == "1"
      @group19.users << current_user
      @group19.save
    elsif user_params[:cp] == "2"
      @group20.users << current_user
      @group20.save
    elsif user_params[:cp] == "3"
      @group21.users << current_user
      @group21.save
    elsif user_params[:cp] == "4"
      @group22.users << current_user
      @group22.save
    elsif user_params[:cp] == "5"
      @group23.users << current_user
      @group23.save
    end

    redirect_to("/")
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    User.create(user_params)

    @groupd = Group.find(params[:id])
    @groupd.destroy


    @group1 = Group.find_by(id: 1)
    @group2 = Group.find_by(id: 2)
    @group3 = Group.find_by(id: 3)
    @group4 = Group.find_by(id: 4)
    @group5 = Group.find_by(id: 5)
    if user_params[:likeTast] == "1"
      @group1.users << current_user
      @group1.save
    elsif user_params[:likeTast] == "2"
      @group2.users << current_user
      @group2.save
    elsif user_params[:likeTast] == "3"
      @group3.users << current_user
      @group3.save
    elsif user_params[:likeTast] == "4"
      @group4.users << current_user
      @group4.save
    elsif user_params[:likeTast] == "5"
      @group5.users << current_user
      @group5.save
    end
    
    @group6 = Group.find_by(id: 6)
    if user_params[:washoku] == "1"
      @group6.users << current_user
      @group6.save
    end
    @group7 = Group.find_by(id: 7)
    if user_params[:yousyoku] == "1"
      @group7.users << current_user
      @group7.save
    end
    @group8 = Group.find_by(id: 8)
    if user_params[:tyuuka] == "1"
      @group8.users << current_user
      @group8.save
    end
    @group9 = Group.find_by(id: 9)
    if user_params[:ethnic] == "1"
      @group9.users << current_user
      @group9.save
    end

    @group10 = Group.find_by(id: 10)
    if user_params[:meat] == "1"
      @group10.users << current_user
      @group10.save
    end

    @group11 = Group.find_by(id: 11)
    if user_params[:fish] == "1"
      @group11.users << current_user
      @group11.save
    end

    @group12 = Group.find_by(id: 12)
    if user_params[:vegetable] == "1"
      @group12.users << current_user
      @group12.save
    end

    @group13 = Group.find_by(id: 13)
    @group14 = Group.find_by(id: 14)
    @group15 = Group.find_by(id: 15)
    if user_params[:Al] == "1"
      @group13.users << current_user
      @group13.save
    elsif user_params[:Al] == "2"
      @group14.users << current_user
      @group14.save
    elsif user_params[:Al] == "3"
      @group15.users << current_user
      @group15.save
    end

    @group16 = Group.find_by(id: 16)
    @group17 = Group.find_by(id: 17)
    @group18 = Group.find_by(id: 18)
    if user_params[:Sw] == "1"
      @group16.users << current_user
      @group16.save
    elsif user_params[:Sw] == "2"
      @group17.users << current_user
      @group17.save
    elsif user_params[:Sw] == "3"
      @group18.users << current_user
      @group18.save
    end

    @group19 = Group.find_by(id: 19)
    @group20 = Group.find_by(id: 20)
    @group21 = Group.find_by(id: 21)
    @group22 = Group.find_by(id: 22)
    @group23 = Group.find_by(id: 23)
    if user_params[:cp] == "1"
      @group19.users << current_user
      @group19.save
    elsif user_params[:cp] == "2"
      @group20.users << current_user
      @group20.save
    elsif user_params[:cp] == "3"
      @group21.users << current_user
      @group21.save
    elsif user_params[:cp] == "4"
      @group22.users << current_user
      @group22.save
    elsif user_params[:cp] == "5"
      @group23.users << current_user
      @group23.save
    end

    redirect_to("/")

  end

  def show
    @name = current_user.name
    @reviews = current_user.reviews
    @groups = current_user.groups
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:name, :adress, :age, :sex, :likeTast, :washoku, :yousyoku, :tyuuka, :ethnic, :meat, :fish, :vegetable, :Al, :Sw, :cp)
  end

end
