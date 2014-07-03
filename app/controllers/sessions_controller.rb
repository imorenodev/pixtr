class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email]) # params needs the hash :session => :email
    cookies.signed[:user_id] = user.id #could user user.email or whatever 
    redirect_to galleries_path
  end
end