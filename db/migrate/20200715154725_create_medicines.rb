class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.float :price
      t.integer :pharma_id
      t.string :instructions
      t.integer :quantity

      t.timestamps
    end
  end
end
