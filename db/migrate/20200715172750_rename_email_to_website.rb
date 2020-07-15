class RenameEmailToWebsite < ActiveRecord::Migration[6.0]
  def change
    rename_column :pharmas, :email, :website
  end
end
