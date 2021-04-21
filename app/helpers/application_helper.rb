module ApplicationHelper

  def nav_link(text, path)
    render inline: "<li>#{link_to text, path}</li>"
  end
end
