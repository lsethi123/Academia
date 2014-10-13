class SchoolUsersController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:login, :new, :create]

  def login

  end

  def new 
    respond_to do |format|
      format.html
    end 
  end

  def create

  end 

end
