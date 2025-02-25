class PasswordResetsController < ApplicationController
  
  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_later
      # deliver later creates a new stream so we don't have to wait
    end

    redirect_to root_path, notice: "Email sent to any user matching that email"
  end
end
