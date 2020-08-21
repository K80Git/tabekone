class GroupsController < ApplicationController


  def edit
    @group_user = Group.new
    @groups = Group.all
    @recoGroup = GroupUser.where(user_id: current_user.id)
    @array = @recoGroup.map { |h| h[:group_id] }
    @groupsName = @groups.map { |h| h[:name] }
  end

  def update
    @group_userDe =GroupUser.where(user_id: current_user.id)
    @group_userDe.delete_all
    @addGroups = Group.where(id: group_params)
    @addGroups.each do |addGroup|
      addGroup.users << current_user
      addGroup.save
    end
    redirect_to("/")
  end

  def show
    @name = current_user.name
    @reviews = current_user.reviews
    @groups = Group.all
    @recoGroup = Group.find(params[:id])
    @recoGroupRev = Review.where(group: params[:id])
    @allReview = Review.all
  end

  private
  def group_params
    params.require(:group)[:group_user_ids]
  end

end
