class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = current_user.jobs.new(job_params)
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

  def job_params
    params.require(:job).permit(:description, :origin, :destination, :cost, :load, :user_id)
  end
end

