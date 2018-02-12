class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user
  helper_method :current_user

  def current_user
    @user = (User.find_by(id: session[:user_id]) || User.new)
  end

  def require_logged_in
   return redirect_to '/login' unless current_user.id != nil
  end

end
