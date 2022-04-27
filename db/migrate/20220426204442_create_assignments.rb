class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.string :description
      t.string :due_date
      t.integer :points
    end
  end
end
