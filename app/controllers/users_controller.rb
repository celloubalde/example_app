class UsersController < ApplicationController
 def new
    @user = User.new
    @titre = "Inscription"
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Example App!"
      redirect_to @user
    else
      @titre = "Inscription"
      render 'new'
    end
  end

  def signup
  end
end
