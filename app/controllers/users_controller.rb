class UsersController < ApplicationController

  def index
      @user = User.new
  end

  def create
      @user = User.create( user_params )
  end

  def show
      @user = User.find_by id: params[:id]
  end
end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
  params.require(:user).permit(:name, :avatar)
end
