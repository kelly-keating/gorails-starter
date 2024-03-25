class MainController < ApplicationController
  def index
    if session[:user_id]
      # @user = User.find(session[:user_id]) <-- throws error
      @user = User.find_by(id: session[:user_id])
    end
  end
end