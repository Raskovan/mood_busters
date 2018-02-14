class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user
  helper_method :current_user, :authenticate_user

  def current_user
    @user = (User.find_by(id: session[:user_id]) || User.new)
  end


  def authenticate_user
    if !current_user
      redirect_to signin_path, notice: "You must be signed in to do that!"
    end
  end

  def require_logged_in
   return redirect_to '/login' unless current_user.id != nil
  end

end
