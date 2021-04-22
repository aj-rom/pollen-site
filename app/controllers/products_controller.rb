class ProductsController < ApplicationController
  before_action :retailer

  def index
    @products = @retailer.products.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def retailer
    @retailer ||= Retailer.find(params[:retailer_id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
