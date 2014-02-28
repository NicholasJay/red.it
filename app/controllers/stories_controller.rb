require 'pry'
class StoriesController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @story = Story.new
  end

  def create
    @user = User.find(params[:user_id])
    @story = @user.stories.new(url: params[:story][:url])
    if @story.save

      redirect_to ("/users/#{params[:user_id]}")
    else
      render(:new)
    end
  end


end