class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    if @comment.save

        @place = Place.new
        @place = 

  end

  def show
  end

  def destroy
  end
end
