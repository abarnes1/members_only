module ApplicationHelper
  def format_server_time(time)
    return '' if time.nil?

    time.localtime.strftime('%m/%d/%Y at %I:%M %p')
  end
end
