class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets
    @following = @user.following
    @followers = @user.followers
    render json: @user
  end
end
