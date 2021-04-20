# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :retailer
  has_many :product_reviews
  has_many :users, through: :product_reviews
end
