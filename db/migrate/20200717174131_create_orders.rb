class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :delivery_date
      t.boolean :no_contact
    end
  end
end
