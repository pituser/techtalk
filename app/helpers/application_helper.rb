module ApplicationHelper

  def sign_in(user)
    cookies.permanent[:remember_token] = user.id
    current_user = user
  end
  
  def signed_in?
    !current_user.nil?
  end  
  
  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= user_from_remember_token
  end
  
  def sign_out
    current_user = nil
    cookies.delete(:remember_token)
  end  

  private

    def user_from_remember_token
      remember_token = cookies[:remember_token]
      User.find(remember_token) unless remember_token.nil?
    end  

end
