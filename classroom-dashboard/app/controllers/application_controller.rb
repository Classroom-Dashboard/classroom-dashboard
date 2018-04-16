class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_admin

  # def authenticate
  # 	redirect_to :login unless admin_signed_in?
  # end
  #
  # def current_user
  # 	@current_admin ||= Admin.find(session[:user_id]) if session[:user_id]
  # end
  #
  # def user_signed_in?
  # 	# converts current_user to a boolean by negating the negation
  # 	!!current_user
  # end
  #
  #
  # def after_sign_in_path_for(resource)
  #   root_path
  # end
  #
  # # redirect to session new after
  # # devise sign out
  # def after_sign_out_path_for(resource)
  #   new_user_session_path
  # end

end
