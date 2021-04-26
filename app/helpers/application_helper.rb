module ApplicationHelper

  def nav_link(text, path, method = :get)
    render inline: "<li>#{link_to text, path, method: method}</li>"
  end

  def error_messages(resource)
    @resource = resource
    render "layouts/errors", resource: @resource
  end

  def view_title(title)
    content_for :title do
      title
    end
  end

  def is_admin?
    is_admin ||= false unless user_signed_in? && current_user.admin
  end

end
