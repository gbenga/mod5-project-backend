class CreateOrderMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :order_medicines do |t|
      t.integer :order_id
      t.integer :medicine_id
    end
  end
end
