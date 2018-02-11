class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.belongs_to :delivery_order
      t.belongs_to :meal
      t.datetime :serving_date, null: false
      t.integer :quantity, null: false
      t.integer :unit_price, null: false

      t.timestamps
    end
  end
end
