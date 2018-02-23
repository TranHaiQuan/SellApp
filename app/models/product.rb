class Product < ApplicationRecord
  belongs_to :subcategory
  belongs_to :category
  belongs_to :user
  has_many :horoscopes
  enum status: %i(ConHang HetHang)
end
