class Review < ApplicationRecord
  belongs_to :user
  belongs_to :company

  validates :title, presence: true, length: {minimum: 1}
  validates :position, presence: true, length: {minimum: 1}
  validates :content, presence: true, length: {minimum: 1}

end 