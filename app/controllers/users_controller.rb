class UsersController < ApplicationController

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
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user)
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
    params.require(:user).permit(:name, image_ids: [])
  end


end
