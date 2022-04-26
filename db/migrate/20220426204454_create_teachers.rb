class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.boolean :is_tenured
      t.string :email
    end
  end
end
