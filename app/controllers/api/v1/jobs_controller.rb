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
      render json: { error: 'failed to create job' }, status: :not_acceptable
    end
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    if @job.valid?
      render :json => @job, status: :created
    else
      render json: {error: 'failed to update job'}, status: :not_acceptable
    end
  end

  def destroy
    @job = Job.find (params[:id])
    @job.destroy
    if @job.valid?
      render :json => @job, status: :created
    else
      render json: {error: 'failed to delete job'}, status: :not_acceptable
    end
  end

  private

  def job_params
    params.require(:job).permit(:user_id, :car_id, :quote, :job_name, :notes, :status)
  end

end
