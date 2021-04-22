class ProductsController < ApplicationController
  before_action :default_product, only: %i[new create]
  before_action :current_product, only: %i[show edit update delete]
  before_action :retailer

  def index
    @products = @retailer.products.all
  end

  def show; end

  def new; end

  def create
    @product = Product.create(product_params)

    if @product.valid?
      @product.save
      flash[:notice] = 'You have successfully created a new product.'
      redirect_to @product
    else
      render partial: 'products/form'
    end
  end

  def edit
    redirect_to @product unless current_user.id == @retailer.user_id
  end

  def update
    @product.update(product_params)

    if @product.valid?
      @product.save
      flash[:notice] = 'Your product has been updated.'
    else
      render partial: 'products/form'
    end
  end

  def delete
    redirect_to @product unless current_user.id == @retailer.user_id

    @product.destroy!

    redirect_to retailer_products_path(@retailer)
  end

  private

  def current_product
    @product ||= Product.find(params[:id])
  end

  def default_product
    @product ||= Product.new
  end

  def retailer
    @retailer ||= Retailer.find(params[:retailer_id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
