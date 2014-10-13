class HomeController < ApplicationController

  def index
    render :dashboard, :layout => "spa"
  end 

end
