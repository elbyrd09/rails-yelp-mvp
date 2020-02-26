class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant.id)
      #you need to use @restaurant.id to identify which restaurant page you are redirecting to, ie. the one you just created.  We primarily have this because the form helper is a separate page from where the review creation takes place
    else
      render 'new'
      #you're not redirected and the information stays the same with a few errors
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
