class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit]
  before_action :authorized, except: [:process_login, :new, :create]

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    @reviews = @user.reviews.uniq
    cookies["user_page"] = @user.id
  end

  def new
    @user = User.create
  end
  
  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: {
      # session[:user_id] = user.id
      info: user
      }
    else
      render json: {
      info: ["Email and password is invalid. Try again."]
    }
    end
  end

  def process_login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: {
        info: user
      # session[:user_id] = user.id
      }
    else
      render json: {
      info: [ "Email and password is invalid. Try again." ]
    }
    end
  end

  def logout
    session.clear
  end

  def profile
    @user = User.find_by(id: session[:user_id])
    reivews = params["user"]["reviews"]
    reviews.shift
    reviews.each do |review|
      @user.reviews << Review.find(review.to_i)
    end
    if @user.save
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end
  
  def create
    @user = User.create(
      email: params[:email], 
      firstname: params[:firstname],
      lastname: params[:lastname], 
      password: params[:password]
    )
    if @user.save
      render json: {
        user: @user, 
        errors: false
      }
    else 
      render json: @user.errors
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
