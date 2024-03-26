class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  # TODO: if user already logged in, redirect to home
  def create
    @user = User.new(user_params)
    # TODO: unique email should matter - here or will model care?
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Successfully created account"
    else
      # flash[:alert] = "Something went wrong"
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end

# user === local var
# @user === "instance" var, available to the view
