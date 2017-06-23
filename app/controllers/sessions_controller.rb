class SessionsController < ApplicationController

  def create
    user = User.find_or_create_by_auth(request.env["omniauth.auth"])

    if user
      session[:user_id] = user.id
      @post_form = true
      redirect_to root_path(post_form: @post_form)
    else
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
