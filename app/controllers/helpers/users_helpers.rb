module UserHelper
  def logged_in? 
    !current_user.nil?
  end

  def check_session
    puts session[:user_id]
  end
  
end