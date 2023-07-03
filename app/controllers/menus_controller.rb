class MenusController < ApplicationController
  def index
  end

  def show
  end

  def new
    @restaurant = Restaurant.find(params[:restaurants_id])
    @menu = Menu.new
  end

  def edit
  end
end
