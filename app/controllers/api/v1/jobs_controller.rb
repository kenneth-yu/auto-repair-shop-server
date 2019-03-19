class Api::V1::JobsController < ApplicationController

  def index
    @jobs = Job.all
    render :json => @jobs
  end

  def create
    @job = Job.create(job_params)
    if @job.valid?
      render :json => @job, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private

  def job_params
    params.require(:job).permit(:user_id, :car_id, :quote, :job_name, :notes, :status)
  end

end
