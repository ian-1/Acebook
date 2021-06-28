class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  
  before_action :set_theme
  before_action :require_login
  

  def handle_unverified_request
    log_out
    super
  end



  private

    def require_login
      unless logged_in?
        flash[:error] = "Please Login!"
        redirect_to login_url
      end
    end
end
