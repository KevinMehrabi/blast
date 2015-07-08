class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_current_ip

  protected
  def set_current_ip
      User.current_ip = request.env['REMOTE_ADDR']
  end

end
