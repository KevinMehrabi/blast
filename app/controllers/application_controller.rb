class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_current_ip

  @user = User.new

  protected
  def set_current_ip
    @user = User.where(current_ip: request.remote_ip).first_or_create
  end 

end
