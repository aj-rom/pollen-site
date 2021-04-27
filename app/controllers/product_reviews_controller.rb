class ProductReviewsController < ApplicationController
  before_action :get_retailer
  before_action :get_product
  before_action :get_review, only: %i[show destroy]
  before_action :ensure_login, only: %i[show new create]
  before_action :ensure_owner_or_admin, only: :destroy

  # Change view path to mimick nested logic
  def self.controller_path
    'retailers/products/product_reviews'
  end

  def index; end
  def show; end

  def new; end

  def create
    @review = ProductReview.create(review_params)

    if @review.valid?
      @review.save
      flash[:notice] = 'Your review has been saved. Thank you!'
      redirect_to_product
    else
      render :'retailers/products/show'
    end
  end

  def destroy
    @review.destroy
    flash[:notice] = 'Successfully deleted product review.'
    redirect_to_product
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
    flash[:error] = 'You must be logged in to leave a review!'
    redirect_to_product unless user_signed_in?
  end

  def ensure_owner_or_admin
    flash[:notice] = 'You do not have permission to edit this review.'
    redirect_to_product unless is_admin? || current_user.id = @review.user_id
  end

  def redirect_to_product
    redirect_to retailer_product_path(@retailer, @product)
  end
end
