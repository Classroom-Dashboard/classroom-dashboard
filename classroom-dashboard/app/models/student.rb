class Student < ApplicationRecord
  belongs_to :admin
  belongs_to :section
  
  has_attached_file :student_img,styles: {student_index:  "300x300#", thumb: "32x32#", student_show:  "100x100#", student_memory: "600x600#"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :student_img, content_type: /\Aimage\/.*\z/
  
  # resizes all images prior to the scaling change to the correct dimensions
  Student.all.each {|s| s.student_img.reprocess! }

end
