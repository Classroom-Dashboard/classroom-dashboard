class Section < ApplicationRecord
  belongs_to :admin
  has_many :students
end
