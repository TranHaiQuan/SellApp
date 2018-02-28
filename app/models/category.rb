class Category < ApplicationRecord
  has_many :subcategories
  has_many :posts
  has_many :products
  belongs_to :user
  scope :all_categories, -> {select(:id, :name, :avatar, :user_id).order(created_at: :desc)}

end
