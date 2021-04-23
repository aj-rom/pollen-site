module ApplicationHelper

  def nav_link(text, path)
    render inline: "<li>#{link_to text, path}</li>"
  end

  def error_fields(resource)
    @resource = resource
    render partial: 'layouts/errors'
  end
end
