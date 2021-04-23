class RetailersController < ApplicationController
  before_action :default_retailer, only: %i[new create]
  before_action :get_retailer, only: %i[show edit update delete]

  def index
    @retailers = Retailer.all
  end

  def most_products
    # Retailer Hash Looks like
    # { retailer_id, product_count }
    retailer_hash = Product.group(:retailer_id).order('count_id DESC').limit(1).count(:id)
    @retailer = Retailer.find_by(id: retailer_hash.keys.first)
    count = retailer_hash.values.first
    flash[:notice] = "#{@retailer.name} has the most products! A whopping #{count} eco-friendly products."

    redirect_to @retailer
  end

  def show; end

  def new
    redirect_to retailers_index_path unless user_signed_in?
  end

  def create
    @retailer = Retailer.create(retailer_params)

    if @retailer.valid?
      @retailer.save
      redirect_to @retailer
    else
      render :'retailers/new'
    end
  end

  def edit
    redirect_to @retailer unless @retailer.user_id == current_user.id
  end

  def update
    @retailer.update(retailer_params)

    if @retailer.valid?
      @retailer.save
      flash[:notice] = 'Successfully updated retailer information.'
      redirect_to @retailer
    else
      render :'retailers/edit'
    end
  end

  def destroy; end

  private

  def default_retailer
    @retailer = Retailer.new
  end

  def get_retailer
    @retailer = Retailer.find_by(id: params[:id])
  end

  def retailer_params
    params.require(:retailer).permit(:name, :description, :user_id)
  end

end
