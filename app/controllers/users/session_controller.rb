class Users::SessionController < ApplicationController

  # GET
  def login
  end

  # POST
  def logout
    session.clear
    flash[:notice] = "Signed out successfully."
    redirect_to root_url
  end

end
