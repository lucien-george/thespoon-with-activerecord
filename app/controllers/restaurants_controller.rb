class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

  def index # read all restaurants
    @restaurants = Restaurant.all
  end

  def show; end # read one restaurant

  def new # display the new form
    @restaurant = Restaurant.new
  end

  def create # create the restaurant and store it in the DB
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def edit; end # display the edit form

  def update # update the restaurant and store the new values in the DB
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy # destroy a restaurant
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
