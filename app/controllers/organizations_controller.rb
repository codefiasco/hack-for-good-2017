class OrganizationsController < ApplicationController

  def home
  end

  def dashboard
  end

  def data
    @languages = Language.all

    @lang_array = @languages.map do |lang|
        {lang: lang.name, langCount: lang.refugees.length}
    end

    respond_to do |format|
          format.json {
            render :json => @lang_array.to_json
          }
      end
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
