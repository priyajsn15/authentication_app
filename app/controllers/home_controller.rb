class HomeController < ApplicationController
  before_action :set_user

  def index
  end

  def edit_profile
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update_profile
    @user = current_user
    respond_to do |format|
      if @user.update_with_password(user_params)
        bypass_sign_in(@user)
        format.html { redirect_to root_path, notice: 'Password updated.' }
        format.js
      else
        format.html { render "edit_profile", notice: 'Password not updated' }
        format.js
      end
    end
  end

  private
    def set_user
	  	@user = current_user
    end

    def user_params
      # NOTE: Using `strong_parameters` gem
      params.require(:user).permit(:password, :password_confirmation, :current_password)
    end

end
