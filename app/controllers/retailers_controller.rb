class RetailersController < ApplicationController
  before_action :default_retailer, only: %i[new create]
  def index
    @retailers = Retailer.all
  end

  def show; end

  def new; end

  def create; end

  def edit; end

  def update; end

  def delete; end

  private

  def default_retailer
    @retailer = Retailer.new
  end
end
