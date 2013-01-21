class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id]) # when we make the request it will incl :id = 1, etc.
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new( params[:user] )
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

end
