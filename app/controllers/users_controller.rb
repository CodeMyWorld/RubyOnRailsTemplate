class UsersController < ApplicationController
  def index
    result = {}
    result[:data] = User.all
    render json: result
  end

  def create
    User.create(user_params)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    end

  private

  def user_params
    params.permit(:name, :password)
  end
end
