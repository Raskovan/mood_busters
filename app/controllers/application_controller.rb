class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception, prepend: true
  before_action :current_user, :require_logged_in, :if_admin
  helper_method :current_user, :authenticate_user

  def current_user
    @user = (User.find_by(id: session[:user_id]) || User.new)
  end

private

  def authenticate_user
    if !current_user
      redirect_to signin_path, notice: "You must be signed in to do that!"
    end
  end

  def require_logged_in
   return redirect_to '/login' unless current_user.id != nil
  end

  def if_admin
    if current_user.id == nil
      redirect_to login_path
    elsif current_user.name != "Admin"
      flash[:error] = "You must be an admin in to access this section"
      redirect_to current_user

    end


    # unless current_user.name == "Admin"
    #   flash[:error] = "You must be an admin in to access this section"
    #   redirect_to login_path
    # end
  end



end
