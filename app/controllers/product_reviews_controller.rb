class ProductReviewsController < ApplicationController
  before_action :get_retailer
  before_action :get_product
  before_action :get_review, only: %i[show edit update destroy]
  before_action :ensure_login, only: %i[show]
  before_action :ensure_owner_or_admin, only: %i[edit update destroy]

  # Change view path to mimick nested logic
  def self.controller_path
    'retailers/products/product_reviews'
  end

  def index

  end

  def new
    @review = @product.product_reviews.build
  end

  def show; end
  def edit; end

  def create
    @review = ProductReview.create(review_params)

    if @review.valid?
      @review.save
      flash[:notice] = 'Your review has been saved. Thank you!'
      redirect_to retailer_product_path(@retailer, @product)
    else
      render :'retailers/products/show'
    end
  end

  def update

  end

  def destroy

  end

  private

  def review_params
    params.require(:product_review).permit( :product_id, :user_id, :rating, :description)
  end

  def get_retailer
    @retailer = Retailer.find(params[:retailer_id])
  end

  def get_product
    @product = Product.find(params[:product_id])
  end

  def get_review
    @review = ProductReview.find(params[:id])
  end

  def ensure_login
    redirect_to @product unless user_logged_in?
  end

  def ensure_owner_or_admin
    redirect_to @product unless is_admin? || current_user.id = @review.user_id
  end
end
