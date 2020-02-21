class Category < ApplicationRecord
  belongs_to :parent, class_name: 'Category', optional: true, foreign_key: :category_id
  has_many :children, class_name: 'Category', dependent: :destroy

  has_and_belongs_to_many :products

  scope :base_categories, -> { where(category_id: nil) }

  def all_children
    children.flat_map do |child|
      child.all_children << child
    end
  end

  def all_parents
    Category.where(id: self.category_id).flat_map do |parent|
      parent.all_parents << parent
    end
  end
end
