class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(name: params[:user][:name])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:message] = "No such User! Try Again."
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end


end
