class PlacesController < ApplicationController
  def index
  end

  def new

  end

  end

  def create
    @place = Product.new(params[:place])
      respond_to do |format|
     if @place.save
       format.html { redirect_to @place, notice: "Save process completed!" }
       format.json { render json: @place, status: :created, location: @place }
     else
       format.html {
         flash.now[:notice]="Save proccess coudn't be completed!"
         render :new
       }
       format.json { render json: @place.errors, status: :unprocessable_entity}
  end

  def show
  end

  def destroy
  end
end
