class CreateAssignment < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.string :description
      t.date :due_date
      t.integer :points
      t.integer :teacher_id
      t.integer :student_id
    end
  end
end
