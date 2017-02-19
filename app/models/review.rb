class Review < ApplicationRecord
  belongs_to :gallery
  validates :content, presence: true
  validates :rating, presence: true
end
