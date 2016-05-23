class ApplicationController < ActionController::Base
  include Clearance::Controller
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def check_user
    user_id = params[:id] || params[:user_id]
    @user = User.find(user_id)
    unless @user == current_user
      flash[:warning] = 'Unauthorized access!'
      redirect_to '/'
    end
  end
end
