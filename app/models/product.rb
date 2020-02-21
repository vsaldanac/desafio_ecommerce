class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :order_items
  has_many :stocks
end
