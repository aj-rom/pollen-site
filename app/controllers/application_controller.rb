class ApplicationController < ActionController::Base

  private

  def is_owner(resource_user_id)
    owner ||= true unless resource_user_id != current_user.id
  end

  def is_admin?
    is_admin ||= false unless user_signed_in? && current_user.admin
  end

end
