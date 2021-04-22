class RetailersController < ApplicationController
  before_action :default_retailer, only: %i[new create]
  before_action :get_retailer, only: %i[show edit update delete]

  def index
    @retailers = Retailer.all
  end

  def show; end

  def new; end

  def create; end

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
    params.require(:retailer).permit(:name, :description)
  end

end
