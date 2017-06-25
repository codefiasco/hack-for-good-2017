class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
    @refugees = @job.refugees
  end

  def create
    skills = params[:job][:skills]
    @job = Job.new(title: params[:job][:title], description: params[:job][:description], expiration_date: params[:job][:expiration_date], location: params[:job][:location])
    @job.organization_id = session[:org_id]

    if @job.save
      skills.each do |s|
        rel = JobsSkillsLink.new(job_id: @job.id, skill_id: s.to_i)
        rel.save
      end

      redirect_to jobs_path
    else

    end

  end

  private
  def jobs_params
  end
end
