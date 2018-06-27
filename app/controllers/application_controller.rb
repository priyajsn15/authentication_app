class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  helper_method :current_user, :signed_in?

  def signed_in?
    !!current_user
  end
end
