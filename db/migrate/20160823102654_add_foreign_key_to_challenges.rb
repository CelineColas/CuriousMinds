class AddForeignKeyToChallenges < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :challenges, :users, column: :teacher_id
  end
end
