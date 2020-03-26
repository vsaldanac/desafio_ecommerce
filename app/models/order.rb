class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  has_many :payments
  has_many :cupons
end
