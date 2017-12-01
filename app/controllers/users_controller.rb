class UsersController < ApplicationController
  def index
  end

  def show
  	@boats = current_user.boats.all
  	@jobs = current_user.jobs.all
  end
end