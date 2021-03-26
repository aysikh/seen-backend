class UsersController < ApplicationController
  # before_action :find_user, only: [:edit]
  # before_action :authorized, except: [:process_login, :new, :create]
  # before_action :authorized, only: [:auto_login]

  def index
    @users = User.all
    render json: @users.to_json(include: [:reviews])
  end

  def show
    token = decoded_token
    # byebug
    @user = User.find((token)[0]["user_id"])
    if @user 
      @reviews = @user.reviews
        render json: {
            auth: true,
            user: @user,
            reviews: @reviews, 
            token: encode_token({user_id: @user.id})
        }
    else
        render json: {
            auth: false,
            info: ["Not a valid user"]
        }
    end
  end

  # def show

  #   @user = User.find(params[:id])
  #   @reviews = @user.reviews
  #   # cookies["user_page"] = @user.id
  #   if @user
  #     render json: {
  #       user: @user, 
  #       reviews: @reviews
  #       }
  #   else render json: {
  #     status: 500, 
  #     info: ["You do not have any reviews yet"]
  #     }
  #   end
  # end

  def new
    @user = User.create
  end
  
  #Logging in
  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      @reviews = @user.reviews
      session[:user_id] = @user.id
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token, reviews: @reviews} 
    else
      render json: {error: "Invalid email and password."}
    end
  end

  # returns the user object as JSON assuming the user has previously logged in
  def auto_login
    render json: @user_id
  end

  def logout
    session.clear
  end

  def profile
    @user = User.find_by(id: session[:user_id])
    if @user.save
      reviews = params["user"]["reviews"]
      reviews.shift
      reviews.each do |review|
        @user.reviews << Review.find(review.to_i)
      end
      redirect_to user_path(@user.id)
    else
      render :new
    end
  end
  
  # Register
  def create
    @user = User.create(
      email: params[:email], 
      firstname: params[:firstname],
      lastname: params[:lastname], 
      password: params[:password]
    )
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {
        user: @user, 
        token: token
      }
    else 
      render json: {error: "Invalid email or password"}
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
        message: ["user cannot be updated"]
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
        message: ["cannot delete user"]
      }
    end
  end

  # def token_authenticate
  #   token = request.headers["Authenticate"]
  #   @user = User.find(decode(token)["user_id"])
  #   render json: @user
  # end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :firstname, :lastname, :password)
  end

end
