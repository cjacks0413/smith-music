class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	helper_method :current_user, :current_user?
  skip_before_filter :require_login
def user_logged_in!
  return if current_user.present?
  flash[:alert] = "Please sign in to view that resource!"
  redirect_to login_url
end

def sign_in(user)
	session[:user_id] = user.id if user.present?
end


def sign_out
	session[:user_id] = nil
end


  private 

	def current_user
    	@current_user ||= User.find(session[:user_id]) if session[:user_id]
      rescue ActiveRecord::RecordNotFound 
  	end
 
def require_user
  redirect_to login_path unless current_user
end 

def current_user?
  current_user.present?
end   


#def can_create_event!
 # return if current_user.role == 'admin'
 # flash[:alert] = "Please sign in to view that resource!"
 # redirect_to login_url
#end

end
