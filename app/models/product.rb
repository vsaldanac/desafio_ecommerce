class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :stocks

  def available?
    stocks.each do 
      return true if stock.quantity > 0
    end
    return false
  end
end
