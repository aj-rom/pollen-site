# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  validates :email, email: true
  # use `email_validator` gem instead
  # validates :email,
  #           format: { with: /^(.+)@(.+)$/, message: 'Invalid email address.' },
  #           uniqueness: { case_sensitive: false },
  #           length: { minimum: 4, maximum: 254 }
end
