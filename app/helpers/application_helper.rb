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

end
