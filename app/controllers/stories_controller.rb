class StoriesController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @story = Story.new
  end

  def create
    @user = User.find(params[:user_id])
    @story = @user.stories.new(url: params[:url])
    if @story.save
      redirect_to ("/users/#{params[:user_id]}/stories")
    else
      render(:new)
    end

    # @story.user = @user
  end


end