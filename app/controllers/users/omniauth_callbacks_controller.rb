class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # See https://github.com/omniauth/omniauth/wiki/FAQ#rails-session-is-clobbered-after-callback-on-developer-strategy
  skip_before_action :verify_authenticity_token, only: %i[google github facebook]

  def github
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in @user
      set_flash_message(:notice, :success, kind: 'GitHub') if is_navigational_format?
      redirect_to root_path
    else
      session["devise.github_data"] = request.env['omniauth.auth'].except(:extra)
      redirect_to new_session_url
    end
  end

  # def facebook
  #   # You need to implement the method below in your model (e.g. app/models/user.rb)
  #   @user = User.from_omniauth(request.env["omniauth.auth"])
  #
  #   if @user.persisted?
  #     sign_in @user
  #     set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
  #     redirect_to root_path
  #   else
  #     session["devise.facebook_data"] = request.env["omniauth.auth"].except(:extra) # Removing extra as it can overflow some session stores
  #     redirect_to new_session_url
  #   end
  # end

  def failure
    flash[:notice] = 'An error has occurred.'
    redirect_to new_session_path
  end
end