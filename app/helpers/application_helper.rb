module ApplicationHelper

  def nav_link(text, path, method = :get)
    render inline: "<li>#{link_to text, path, method: method}</li>"
  end

  def error_fields(resource)
    @resource = resource
    render partial: 'layouts/errors'
  end
end
