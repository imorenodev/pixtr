class SessionsController < ApplicationController
  def new
  end

  def create
    user = authenticate_session(session_params) #monban

    if sign_in(user)
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    sign_out #monban sign_out method
    redirect_to galleries_path
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end