class AddAdminIdToSections < ActiveRecord::Migration[5.1]
  def change
    add_column :sections, :admin_id, :integer
  end
end
