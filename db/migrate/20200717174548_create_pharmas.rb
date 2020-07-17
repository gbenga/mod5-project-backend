class CreatePharmas < ActiveRecord::Migration[6.0]
  def change
    create_table :pharmas do |t|
      t.string :name
      t.string :address
      t.string :website
      t.string :phone
    end
  end
end
