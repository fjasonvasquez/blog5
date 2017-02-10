class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound, with: :resource_not_found

  protected

  def resoure_not_found
  end
end
