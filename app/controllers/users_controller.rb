class UsersController < ApplicationController
  def show
    @user = User.find(params[:format])
    @boats = @user.boats
  end
end



private
