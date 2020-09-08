class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @blog = Blog.find(params[:blog_id])
    @reviews = @blog.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to blog_reviews_path(@review.blog)
    else
      @blog = Blog.find(params[:blog_id])
      render "blogs/show"
    end
  end

  private
  def review_params
    params.require(:review).permit(:blog_id, :score, :content)
  end
end
