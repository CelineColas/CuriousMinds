class AddStudentReferenceToQuests < ActiveRecord::Migration[5.0]
  def change
    add_column :quests, :student_id, :integer
    add_foreign_key :quests, :users, column: :student_id
  end
end
