class Api::V1::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    user = User.all
    render json: user, only: [:username, :id]
  end

  def show
    #if (User.find(params[:id]) ) TODO make validation of presence
    user = User.find(params[:id])
    render json: user, only: [:username, :id], include: :posts, only: [:id, :body]
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, only: [:username, :id]
    else
      render json: {errors: user.errors.full_messages}, status: :error
    end
  end
    private
    def user_params()
      params.permit(:username, :password, :email)
    end

end
