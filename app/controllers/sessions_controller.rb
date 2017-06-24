class SessionsController < ApplicationController

  def login_org
    org = Organization.find_by(email: params[:session][:email])

    if org && org.authenticate(params[:session][:password])
      session[:org_id] = org.id
      session[:ref_id] = nil
      redirect_to dashboard_path
    end
  end

  def login_ref
    ref = Refugee.find_by(nif: params[:session][:email])

    if ref && ref.authenticate(params[:session][:password])
      session[:ref_id] = ref.id
      session[:org_id] = nil
      redirect_to refugees_path
    end
  end

end
