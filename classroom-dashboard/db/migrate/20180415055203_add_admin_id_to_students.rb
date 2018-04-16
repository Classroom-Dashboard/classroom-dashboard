class AddAdminIdToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :admin_id, :integer
  end
end
