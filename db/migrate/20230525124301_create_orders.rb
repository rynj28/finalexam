class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.float :total_amount
      t.integer :total_product_quantity
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
