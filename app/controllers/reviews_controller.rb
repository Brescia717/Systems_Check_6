class ReviewsController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def create
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new(review_params)
    @review.save

    redirect_to @restaurant
  end

  private

    def review_params
      results = params.require(:review).permit(:id, :rating, :body)
      results[:id] = params[:id]
      results
    end

    # def review_params
    #   params.require(:review).permit(:rating, :body)
    # end
end
