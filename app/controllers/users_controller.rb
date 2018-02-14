class UsersController < ApplicationController
  layout "user"


  def welcome
     require_logged_in
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    return redirect_to '/users/new' unless @user.save
    session[:user_id] = @user.id
    redirect_to @user
  end

  def mood
    @user = User.find_by(id: params[:id])
  end


  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(user_params)
    UserMood.create(user_id: @user.id, mood_id: @user.show_mood.id)
    redirect_to user_path
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to users_path
  end

  # def image_ids=(ids)
  #   ids.each do |id|
  #     image = Image.find(id)
  #     self.images << image
  #   end
  # end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_digest, image_ids: [])
  end


end
