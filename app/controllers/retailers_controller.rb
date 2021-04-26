class RetailersController < ApplicationController
  before_action :default_retailer, only: %i[new create]
  before_action :get_retailer, only: %i[show edit update delete]
  # TODO: make sure only admins can see/access crud operations
  # before_action :ensure_admin, only: %i[new create]
  before_action :ensure_admin_redirect, only: %i[edit update delete]

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

  def new; end

  def create
    @retailer = Retailer.create(retailer_params)

    if @retailer.valid?
      @retailer.save
      redirect_to @retailer
    else
      render :'retailers/new'
    end
  end

  def edit; end

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

  def ensure_admin
    redirect_to retailers_path unless is_admin? || is_owner(@retailer.id)
  end

  def ensure_admin_redirect
    redirect_to @retailer unless is_admin? || is_owner(@retailer.id)
  end

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
