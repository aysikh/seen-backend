class Company < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  validates :name, presence: true, uniqueness: true, length {minimum: 1}
  validates :location, presence: true, length {minimum: 1}
  validates :description, presence: true, length {minimum: 1}
  validates :industry, presence: true, length {minimum: 1}

  validates :email, presence: true
  validates :email, uniqueness: true
end
