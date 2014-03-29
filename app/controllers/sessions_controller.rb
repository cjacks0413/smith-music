class SessionsController < ApplicationController
  def new  
  end  
     def index  
  end

  def create  
    user = User.find_by user_name: params[:user_name].downcase
    if user  && user.authenticate(params[:password])  
      session[:user_id] = user.id  
      flash[:notice] = "You are signed in!"
      redirect_to root_url 
    else  
      flash.now.alert = "Invalid User Name or password"  
      render "new"  
    end  
  end 
 
def destroy  
sign_out
        flash[:notice] = "You are signed out!"

  redirect_to root_url
end  
end
