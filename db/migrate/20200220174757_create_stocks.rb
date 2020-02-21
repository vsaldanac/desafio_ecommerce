class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.references :product, foreign_key: true
      t.references :color, foreign_key: true
      t.references :size, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
