class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :companies, through: :reviews

  validates :firstname, presence: true, length: { minimum: 1 }
  validates :lastname, presence: true, length: { minimum: 1 }
  validates :email, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/
end
