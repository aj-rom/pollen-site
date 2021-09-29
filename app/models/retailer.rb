# frozen_string_literal: true

class Retailer < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
  has_many :product_reviews, through: :products

  # Name validations
  validates_format_of :name, without: /(^\s)/, message: 'must not start with space.'
  validates_uniqueness_of :name, message: 'must be unique.'
  validates_length_of :name, maximum: 255, message: 'must be less than 256 characters.'

  # Description Validations
  validates_presence_of :description, message: 'must be present.'
  validates_length_of :description,
                      minimum: 20,
                      maximum: 3000,
                      message: 'must be between 20 - 3000 characters'

  def average_review
    count = product_reviews.count.to_f
    product_reviews.all.map(&:rating).inject(:+).to_f / count unless count.zero?
  end

end
