class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout 'home'
  before_action :authenticate_user!
  helper_method :user_signed_in?

  def authenticate_user!
    if session[:school_user].blank?
      redirect_to new_school_user_path
    end 
  end

  def user_signed_in?
    session[:school_user].blank? == false
  end

end
