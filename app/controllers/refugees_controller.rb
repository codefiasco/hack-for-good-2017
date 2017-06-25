class RefugeesController < ApplicationController


private
  def refugee_params
    params.require(:refugee).permit(:name, :birthday, :gender, :nationality, :address, :email, :phone, :additional_info, :degree_id , :password)
  end


public
  def index
    @refugees = Refugee.all
  end

  def job_recommendations
    @refugee = Refugee.find(session[:ref_id])
    @skills = @refugee.skills
    @jobs = []
    @skills.each do |u|
      u.jobs.each do |s|
        if !(@jobs.include? s)
          @jobs << s
        end
      end
    end
    render 'jobs/index'
  end

  def new
    @refugee = Refugee.new()
  end

  def create
    @refugee = Refugee.new(refugee_params)
    if @refugee.save
        redirect_to refugees_path
    else
        render 'new'
    end
  end


  def show
    @refugee = Refugee.find(params[:id])
    session[:refugee_id] = @refugee.id
  end

end
