class ReviewsController < ApplicationController
  def index
  end

  def new
    @review = Review.new
    @group = Group.all
  end

  def create
    Review.create(review_params)
    redirect_to user_path(current_user.id)
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to user_path(current_user.id)
  end

  def edit
    @review = Review.find(params[:id])
    @group = Group.all
  end

  def update
    review = Review.find(params[:id])
    review.update(review_params)
    redirect_to user_path(current_user.id)
  end

  def show
    @review = Review.find(params[:id])
  end

  private
  def review_params
    params.require(:review).permit(:name, :shopName, :menuName, :kind, :situation, :deliciousness, :costPerformance, :sweetness, :strongTaste, :Texture, :EaseOfEating, :volume, :appearance, :balance, :disagreement, :group, :comment).merge(user_id: current_user.id)
  end

end
