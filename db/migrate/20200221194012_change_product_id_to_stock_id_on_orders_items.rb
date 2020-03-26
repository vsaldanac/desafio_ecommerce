class ChangeProductIdToStockIdOnOrdersItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :order_items, :product_id, :stock_id
  end
end
