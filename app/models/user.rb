class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :companies, through: :reviews

  validates :firstname, presence: true
  validates :firstname, uniqueness: true
  validates :firstname, length: { minimum: 1 }
  validates :lastname, presence: true
  validates :lastname, uniqueness: true
  validates :lastname, length: { minimum: 1 }
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/
end
