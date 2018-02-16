class SessionsController < ApplicationController
  skip_before_action :require_logged_in
  skip_before_action :if_admin

  def new
  end

  def create
    user = User.find_by(name: params[:user][:name])
    user = user.try(:authenticate, params[:user][:password])
    return redirect_to '/login' unless user
    session[:user_id] = user.id
    @user = user
    redirect_to @user
  end

  def destroy
    session.clear
    redirect_to login_path
  end


end
