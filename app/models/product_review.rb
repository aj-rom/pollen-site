# frozen_string_literal: true

class ProductReview < ApplicationRecord
  belongs_to :product
  belongs_to :user
  has_one :retailer, through: :product

  validates_presence_of :product
  validates_presence_of :user
  validates_length_of :description, minimum: 5, maximum: 3000,
                                    message: 'Review must be between 20 - 3000 characters'
  validates_numericality_of :rating, minimum: 1, maximum: 5
end
