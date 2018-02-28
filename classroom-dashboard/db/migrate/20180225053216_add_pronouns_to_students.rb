class AddPronounsToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :pronouns, :string
  end
end