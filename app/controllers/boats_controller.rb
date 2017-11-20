class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = current_user.boats.new(boat_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :capacity, :location)
  end
end
