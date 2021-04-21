# frozen_string_literal: true

class Retailer < ApplicationRecord
  belongs_to :user
  has_many :products
  has_many :product_reviews, through: :products

  # Name validations
  validates_uniqueness_of :name, message: 'A retailer by this name already exists.'
  validates_length_of :name, maximum: 255

  # Description Validations
  validates_presence_of :description, message: 'Please provide a description of your products/services.'
  validates_length_of :description,
                      minimum: 20,
                      maximum: 3000,
                      message: 'Description must be between 20 - 3000 characters'

  def average_review
    count = product_reviews.count.to_f
    product_reviews.inject(:+) / count unless count == 0
  end

end
