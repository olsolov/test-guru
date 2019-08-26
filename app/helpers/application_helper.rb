module ApplicationHelper
  def flash_message(message_type)
    content_tag :p, flash[message_type], class: "flash #{message_type}" if flash[message_type]
  end
end
