class AddLastNameToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :lastName, :string
  end
end