class Review < ApplicationRecord
  belongs_to :user
  has_many :group_reviews
  has_many :groups, through: :group_reviews
end
