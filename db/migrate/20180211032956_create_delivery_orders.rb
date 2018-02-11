class CreateDeliveryOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :delivery_orders do |t|
      t.datetime :serving_datetime, null: false

      t.timestamps
    end
  end
end
