class UsersController < ApplicationController
  def new
  end

  def create
    user = User.create!(params[:user])
    redirect_to new_session_url
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
