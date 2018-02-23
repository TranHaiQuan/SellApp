class Category < ApplicationRecord
  has_many :subcategories
  has_many :posts
  has_many :products
  belongs_to :user
end
