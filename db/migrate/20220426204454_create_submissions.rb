class CreateSubmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :submissions do |t|
      t.integer :points_earned
      t.string :teacher_notes
      t.integer :assignment_id
      t.integer :student_id
    end
  end
end
