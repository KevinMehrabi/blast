class SessionsController < ApplicationController

  def create
    user = User.find(params[:id])
    session[:user_id] = user.id
    redirect_to root_path
  end

  def show
    user = User.find_by({id: session[:user_id]})
    render json: user
  end
  
end
