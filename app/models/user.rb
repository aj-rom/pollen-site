# frozen_string_literal: true

class User < ApplicationRecord
  include BCrypt
  has_many :retailers
  has_many :product_reviews
  has_many :products, through: :product_reviews
  devise :omniauthable, omniauth_providers: %i[github]

  has_secure_password

  validates :email, email: true, uniqueness: true

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      pass = Devise.friendly_token(20)
      user.password = pass
      user.password_confirmation = pass
    end
  end

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end

end
