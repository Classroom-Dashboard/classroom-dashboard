class AddCourseIdToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :course_id, :integer
  end
end
