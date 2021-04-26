class ApplicationController < ActionController::Base

  private

  def is_owner(resource_user_id)
    true unless resource_user_id != current_user.id
  end

  def is_admin?
    current_user.admin
  end
end
