class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      redirect_to new_session_path, flash: {alert: 'そんなユーザいないよ！！ちんでねっ！'}
    end
  end

  def destroy
    log_out
    redirect_to static_pages_home_path
  end
end
