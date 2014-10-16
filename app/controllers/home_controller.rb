class HomeController < ApplicationController

  def index
    if session[:admin].blank?
      redirect_to dashboard_url
    else
      redirect_to internal_dashboard_url
    end
  end

  def dashboard
    session[:admin] = false
    render :dashboard, :layout => "spa"
  end 

end
