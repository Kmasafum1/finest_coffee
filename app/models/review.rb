class Review < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  validates :score, presence: true
end
