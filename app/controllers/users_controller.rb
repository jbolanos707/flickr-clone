class UsersController < ApplicationController
  before_filter :authenticate_user!


  def index
  end

  def create
  @user = User.create( user_params )
end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
  params.require(:user).permit(:avatar)
end


def show
  @user = User.find(params[:id])
  @pictures = @user.pictures
end


end