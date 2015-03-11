module ApplicationHelper
  def dropdown(column_name, array, value_method, display_method)
    html = "<select name=\"employment[#{column_name}]\">".html_safe
    array.each do |record|
      html += "<option value=\"#{ record.send(value_method) }\">#{ record.send(display_method) }</option>".html_safe
      # html += "<option value=\"#{ record.send(:id) }\">#{ record.send(display_method) }</option>".html_safe
      # html += "<option value=\"#{ record.id }\">#{ record.send(display_method) }</option>".html_safe
    end
    html += "</select>".html_safe
    html
  end

  def my_link_to_show(object, id, display)
    html = ""
    html += "<a href =\"/#{ object.class.to_s.downcase.pluralize }/#{object.send(id)}\">#{object.send(display)}</a>".html_safe
    html
  end

  #<a href="/shovels/26">shovel 61 - $84.0</a>
end
