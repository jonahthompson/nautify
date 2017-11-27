class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @contract = Contract.new
  end

  def new
    @job = Job.new
  end

  def create
    @job = current_user.jobs.new(job_params)
    respond_to do |format|
      Job.new(job_params)
      if @job.save
        format.js
        format.html {redirect_to jobs_path}
      else
        render new_job_path
      end
    end 
  end

  def show
    @job = Job.find(params[:id])
  end

  def edit
    @job = Job.find(params[:id])  
  end

  def update
    @job = Job.find(params[:id])
    respond_to do |format|
      @job.update(job_params)
      format.js 
      format.html {render jobs_path}
    end
  end

  def destroy
    respond_to do |format|
      @job = Job.find(params[:id]).destroy
      format.js
      format.html {redirect_to jobs_path}
    end
  end

  private

  def job_params
    params.require(:job).permit(:name, :description, :origin, :destination, :cost, :load, :user_id, :avatar)
  end
end

