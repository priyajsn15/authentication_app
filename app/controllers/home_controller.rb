class HomeController < ApplicationController
  before_action :set_user

  def index
  end

  def edit_profile
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  def update_profile
  end

  private
    def set_user
	  	@user = current_user
    end


end
