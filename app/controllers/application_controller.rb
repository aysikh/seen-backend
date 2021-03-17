class ApplicationController < ActionController::API
  include ActionController::Helpers
  # skip_before_action :verify_authenticity_token

  helper_method :current_user, :login!, :logged_in?, :current_user, :authorized_user?, :logout!

  def current_user
    user_session = User.find_by(id: session[user_id])
  end

  def login!
      session[:user_id] = @user.id
    end

  def logged_in?
      !!session[:user_id]
    end

  def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

  def authorized
    @user == current_user
    if !logged_in?
      flash[:notice] = "You must log in"
      redirect_to '/log-in'
    end
  end

  def logout!
      session.clear
  end

end
