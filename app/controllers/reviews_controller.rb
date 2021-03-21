class ReviewsController < ApplicationController
  # before_action :authorized #in order to write a review, you have to be logged in
  before_action :find_review, only: [:show, :edit]

  def index
    # byebug
    company = params[:name].capitalize
    @reviews = Company.find_by(name: company).reviews
    render json: @reviews
  end

  def show
  end

  def new
    @review = Review.create
  end

  def create
    @review = Review.create(review_params)
    @user= User.find(:user_id)
    @company = Company.find(:company_id)
    if @review.save
      render json: {
        review: @review, 
        errors: false
      }
    else 
      render json: {
        errors: true,
        info: ["review cannot be created"]
      }
    end
  end

  def edit
  end

  def update
    @review = Review.find(params[:id])
    if @review
      @review.update(review_params)
      render json: {
        review: @review,
        errors: false
      }
    else
      render json: {
        errors: true, 
        info: ["review cannot be updated"]
      }
    end
  end

  def destroy
    @reviews = Review.all
    @review = find_review
    if @review.destroy 
      render json: {
        review: @reviews, 
        errors: "review has been deleted",
        success: true
      }
    else
      render json: {
        success: false, 
        errors: false, 
        info: ["cannot delete review"]
      }
    end
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  # isUseful, isNotUseful, and date is not included in the params
  def review_params
    params.require(:review).permit(:title, :position, :content, :diversity, :leadership, :worklife, :inclusiveness, :benefits, :recommendation, :user_id, :company_id)
  end

end
