class Review < ApplicationRecord
  belongs_to :user
  belongs_to :company

  validates :title, presence: true, length: {minimum: 1}
  validates :position, presence: true, length: {minimum: 1}
  validates :rating, presence: true
  validates :pros, presence: true, length: {minimum: 1}
  validates :cons, presence: true, length: {minimum: 1}

end
