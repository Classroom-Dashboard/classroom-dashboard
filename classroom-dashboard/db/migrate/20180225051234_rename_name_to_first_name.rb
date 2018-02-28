class RenameNameToFirstName < ActiveRecord::Migration[5.1]
  def change
    rename_column :students, :name, :firstName
  end
end