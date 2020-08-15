class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  has_many :group_reviews
  has_many :reviews, through: :group_reviews
end
