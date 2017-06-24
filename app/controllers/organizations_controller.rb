class OrganizationsController < ApplicationController

  def home
  end

  def organizationsLandingPage
  end

  def refugeesLandingPage
  end

  def index
    @organizations = Organization.all()
  end

  def new
    @organization = Organization.new()
  end

  def edit
    set_organization
  end

  def show
    set_organization
    session[:organization_id] = @organization.id
  end

  private

  def organization_params
    params.require(:organization).permit(:title, :description, :interests, :skills, :avatar)
  end

  def set_organization
    @organization = Organization.find(params[:id])
  end

end
