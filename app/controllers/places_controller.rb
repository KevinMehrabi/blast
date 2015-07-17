class PlacesController < ApplicationController
  def index
  end

  def show
    @place = Place.where(id: params[:id])

    render json: @place

  end

  def new

  end



  def create
    @place = Place.new
    @place.UID = params[:id]
    @place.name = params[:name]
     if @place.save
       render json: @place
     else
       render json: @place.errors
     end
  end



  def destroy
  end
end
