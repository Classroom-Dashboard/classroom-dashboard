class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :course
      t.string :semester
      t.integer :year
      t.string :professor

      t.timestamps
    end
  end
end