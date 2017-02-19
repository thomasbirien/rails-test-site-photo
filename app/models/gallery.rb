class Gallery < ApplicationRecord
  has_many :reviews
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
end
