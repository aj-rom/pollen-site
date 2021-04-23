# frozen_string_literal: true

class User < ApplicationRecord
  has_many :retailers
  has_many :product_reviews
  has_many :products, through: :product_reviews
  devise :omniauthable, omniauth_providers: %i[github]
  validates :email, email: true

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
    end
  end
end
