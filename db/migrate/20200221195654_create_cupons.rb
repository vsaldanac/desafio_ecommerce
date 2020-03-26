class CreateCupons < ActiveRecord::Migration[5.2]
  def change
    create_table :cupons do |t|
      t.integer :cupon_type
      t.integer :amount_type
      t.integer :amount
      t.boolean :used, default: false
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
