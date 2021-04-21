module SessionHelper

  def button_to_provider(name, provider)
    button_to "Sign in with #{OmniAuth::Utils.camelize(provider)}", omniauth_authorize_path(name, provider)
  end

end
