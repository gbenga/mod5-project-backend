class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :medicine_id
      t.integer :delivery_date
      t.boolean :no_contact

      t.timestamps
    end
  end
end
