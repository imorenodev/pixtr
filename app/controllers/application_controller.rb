class ApplicationController < ActionController::Base
  include Monban::ControllerHelpers
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


#MONBAN INCLUDES ALL THE METHODS BELOW
  # def current_user #checks to see who exactly is signed in #can be used in any controller but not views
  #   if cookies[:user_id]
  #     @user ||= User.find_by(id: cookies.signed[:user_id]) # ||= means @user = @user OR @user = User.find(cookies.signed[:user_id])
  #   end
  # end
  # helper_method :current_user #by making current_user a helper method it can be used in any view or controller

  # def signed_in? #checks to see if anyone is signed in
  #   current_user
  # end
  # helper_method :signed_in?
end
