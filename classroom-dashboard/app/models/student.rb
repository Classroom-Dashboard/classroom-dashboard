class Student < ApplicationRecord
  belongs_to :admin
  belongs_to :section

  has_attached_file :student_img,styles: {student_index:  "100x100#", student_show:  "400x400#"}, default_url: "/images/alien1.png"
  validates_attachment_content_type :student_img, content_type: /\Aimage\/.*\z/

  # resizes all images prior to the scaling change to the correct dimensions
  # Student.all.each {|s| s.student_img.reprocess! }
  # makes server run slow so commented out for client-dev meeting ^

end
