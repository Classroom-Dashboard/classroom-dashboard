class Upload < ApplicationRecord
    belongs_to :student
    has_attached_file :image, styles: { student_index: "250x350>", student_show: "325x475>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
