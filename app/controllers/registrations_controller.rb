class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end
end

# user === local var
# @user === "instance" var, available to the view
