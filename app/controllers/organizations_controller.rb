class OrganizationsController < ApplicationController

  def home
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
    byebug
  end

   def create
    @organization = Organization.new(organization_params)
    if(@organization.save)
        redirect_to organization_path(@organization.id)
    else
        render 'new'
    end
  end

  private

  def organization_params
    params.require(:organization).permit(:name, :contact, :address, :email, :password, :description, :avatar)
  end

  def set_organization
    @organization = Organization.find(params[:id])
  end

end
