class AddAttachmentStudentImgToStudents < ActiveRecord::Migration[5.1]
  def self.up
    change_table :students do |t|
      t.attachment :student_img
    end
  end

  def self.down
    remove_attachment :students, :student_img
  end
end