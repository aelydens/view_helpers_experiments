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


end
