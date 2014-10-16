class SchoolUsersController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:login, :new, :create]

  def login
    user = params[:user]
    found_user = SchoolUser.find_by_username(user[:username])
    match = found_user.blank? ? false : found_user.password == user[:password]
    path = new_school_user_path
    if match
      session[:school_user] = user
      path = root_path
    end
    flash[:error] = "Invalid username and password. User was not found."
    redirect_to path
  end

  def new
    respond_to do |format|
      format.html
    end 
  end

  def create

  end 

end
