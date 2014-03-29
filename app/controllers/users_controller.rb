class UsersController < ApplicationController
  #before_filter :require_user

  def new
  	    @user = User.new  
  end


  def create  
    @user = User.new(user_params)  
    if @user.save  
      redirect_to @user, :notice => "Signed up!"  
      sign_in @user
      session[:user_id] = @user.id

    else  
      render "new"  
    end  
  end  

  def show
    @user = User.find(params[:id]) 
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @events = @user.events 
  end 

  private

  def user_params
    params.require(:user).permit(:firstname, :lastname, :user_name, :password, :password_confirmation, :role)
  end

end
