class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  private
### Something is happening here.  The '/restuaraunts' page works when directly going there,
### but if redirected, it crashes.
    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :city, :state, :zipcode,
        :description, :category)
    end
end
