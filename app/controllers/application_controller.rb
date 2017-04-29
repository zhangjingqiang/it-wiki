class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def layout_by_device
    case request.user_agent
    when /iPad|Android/
      request.variant = :tablet
    when /iPhone|Mobile/
      request.variant = :mobile
    else
      request.variant = :pc
    end
  end
end
