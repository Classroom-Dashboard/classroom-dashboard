class AddSectionIdToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :section_id, :integer
  end
end
