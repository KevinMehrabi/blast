class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_current_ip

  @user = User.new

  def save_user_location
    if cookies[:lat_lng]
      @lat_lng = cookies[:lat_lng].split("|")
      @user=@current_user
      @user.latitude=@lat_lng[0]
      @user.longitude=@lat_lng[1]
      @user.save
      redirect_to users_index_path
    end
  end


  protected
  def set_current_ip
    @user = User.where(current_ip: request.remote_ip).first_or_create
    @user = User.find_or_initialize_by({current_ip: request.remote_ip})
    user = User.find_by({current_ip: request.remote_ip})
    session[:user_id] = user.id
  end

end
