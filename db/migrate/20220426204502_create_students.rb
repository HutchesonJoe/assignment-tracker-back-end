class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table do |t|
      t.string :name
      t.string :grade_level
      t.float :gpa
      t.string :email
    end
  end
end
