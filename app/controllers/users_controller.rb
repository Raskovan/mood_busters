class UsersController < ApplicationController
  layout "user"
  before_action :require_logged_in, only: [:show]
  before_action :if_admin, only: [:index]
  # skip_before_action :if_admin


  # binding.pry

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
    UserMood.where(user_id: @user.id).update_all(current_mood: false)
    UserMood.create(user_id: @user.id, mood_id: @user.show_mood.id, current_mood: true)
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

  def authenticate
    redirect_to('/login') unless current_user.nil?
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_digest, image_ids: [])
  end


end
