class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate_request

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: 200
    else
      render json: @user.errors
    end
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end
