class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit]

  def index
    @users = User.all
    render json: @users
  end

  def show
  end

  def new
    @user = User.create
  end

  def create
    @user = User.create(user_params)
    @location = Location.find(:location_id)
    if @user.save
      render json: {
        user: @user, 
        errors: false
      }
    else 
      render json: {
        errors: true,
        info: ["user cannot be created"]
      }
    end
  end

  def edit
  end

  def update
    @user = User.find(params[:id])
    if @user
      @user.update(user_params)
      render json: {
        user: @user,
        errors: false
      }
    else
      render json: {
        errors: true, 
        info: ["user cannot be updated"]
      }
    end
  end

  def destroy
    @users = User.all
    @user = find_user
    if @user.destroy 
      render json: {
        user: users, 
        errors: "user has been deleted",
        success: true
      }
    else
      render json: {
        success: false, 
        errors: false, 
        info: ["cannot delete user"]
      }
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :firstname, :lastname, :password)
  end

end
