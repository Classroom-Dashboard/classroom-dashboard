class AddSchoolToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :school, :string
  end
end
