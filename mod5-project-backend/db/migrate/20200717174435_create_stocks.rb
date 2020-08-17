class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.integer :pharma_id
      t.integer :medicine_id
      t.float :price
      t.integer :quantity
    end
  end
end
