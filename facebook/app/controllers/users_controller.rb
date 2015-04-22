class UsersController < ApplicationController

  def create
    user = User.create(user_params)
    render json: user
  end

  # email, name, password
  private
    def user_params
      params.require(:user).permit(:email, :name, :password)
    end
end
