class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    @contract = Contract.new
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = current_user.boats.new(boat_params)
    respond_to do |format|
      Boat.new(boat_params)
      if @boat.save
        format.js
        format.html {redirect_to boats_path}
      else
        render new_boat_path
      end
    end 
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    respond_to do |format|
      @boat.update(boat_params)
      format.js
    end
  end

  def destroy
    respond_to do |format|
      @boat = Boat.find(params[:id]).destroy
      format.js
      format.html
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :capacity, :location, :avatar)
  end
end
