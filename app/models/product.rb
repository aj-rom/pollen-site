# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :retailer
  has_many :product_reviews
  has_many :users, through: :product_reviews

  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 20, maximum: 1000 }

  validates_numericality_of :price, format: { in: /(\d{1,9}.\d{2})/}
end
