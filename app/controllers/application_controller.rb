class ApplicationController < ActionController::API
  include ActionController::Helpers
  # skip_before_action :verify_authenticity_token

  # helper_method :current_user, :login!, :logged_in?, :current_user, :authorized_user?, :logout!

  # def current_user
  #   user_session = User.find_by(id: session[user_id])
  # end

  # def login!
  #     session[:user_id] = @user.id
  #   end

  # def logged_in?
  #     !!session[:user_id]
  #   end

  # def current_user
  #     @current_user ||= User.find(session[:user_id]) if session[:user_id]
  #   end

  # def authorized
  #   @user == current_user
  #   if !logged_in?
  #   end
  # end

  # def logout!
  #     session.clear
  # end

  def encode_token(payload)
    JWT.encode(payload, 'seen')
  end

  # def secret_key
  #   "seen"
  # end

  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers['Authorization']
  end

  # def encode(payload)
  #   JWT.encode(payload, secret_key, 'HS256')
  # end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      # header: { 'Authorization': 'Bearer <token>' }
      begin
        JWT.decode(token, 'seen', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  # def decode(token)
  #   JWT.decode(token, "seen", true, {algorithm: 'HS256'})[0]
  # end

  def logged_in_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!logged_in_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

end
