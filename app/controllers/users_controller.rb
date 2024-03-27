class UsersController < ApplicationController
  before_action :require_user_logged_in
  
  def index
  end

  def edit
  end

  def update
    if Current.user.authenticate(params[:user][:current_password])
      new_pwds = { password: params[:user][:new_password], password_confirmation: params[:user][:new_password_confirmation] }
      if Current.user.update(new_pwds)
        flash[:notice] = "Password updated"
        redirect_to account_path
      else
        render :edit, status: :unprocessable_entity
      end
    else
      flash[:alert] = "Current password incorrect"
      redirect_to account_edit_path
    end
  end

  # private

  # def password_params
  #   params.require(:user).permit(:current_password, :new_password, :new_password_confirmation)
  # end
end
