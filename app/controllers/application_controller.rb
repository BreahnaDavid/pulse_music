class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :force_https

  def force_https
    if !request.ssl? && force_https? && Rails.env.production?
      redirect_to protocol: "https://", status: :moved_permanently
    end
  end

  def force_https?
    true
  end
end
