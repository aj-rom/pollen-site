class Users::SessionController < ApplicationController

  # GET
  def login
    @user = User.new
  end

  # POST
  def user_login
    @user = User.find_by_email(params[:email])
    if @user.nil?
      flash[:alert] = 'Email does not exist.'
      return redirect_to login_path
    end
    if @user.password == params[:password]
      flash[:notice] = "You've signed in."
      sign_in @user
      redirect_to "/"
    else
      flash[:alert] = "There was a problem signing in. Please try again."
      redirect_to login_path
    end
  end

  # POST
  def logout
    session.clear
    flash[:notice] = "Signed out successfully."
    redirect_to root_url
  end

  private

end
