class SessionsController < ApplicationController
  def new
  	@title = "Sign in"
  end
  
  def create
    member = Member.authenticate(params[:email], params[:password])
    if member
      session[:member_id] = member.id
      redirect_to root_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
  
  def destroy
  	@title = "Sign out"
    session[:member_id] = nil
    redirect_to root_path
  end
end
