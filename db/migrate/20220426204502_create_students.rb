class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :grade_level
      t.float :gpa
      t.string :email
      t.string :current_grade
    end
  end
end
