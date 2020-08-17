class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.string :dob
      t.string :phone
      t.string :address
      t.string :allergies
    end
  end
end
