class SessionsController < ApplicationController

  def new
  end


  def create
    user = User.find_by_email(params[:user][:email])

    if user.nil?
      redirect_to new_session_path
      return
    end

    if user.verify_password(params[:user][:password])
      user.reset_session_token!
      session[:session_token] = user.session_token

      redirect_to user_path(user)
    else
      # render text: 'Invalid password.'
      redirect_to new_session_path
    end
  end


  def destroy # logout
  end
end
