class CreateChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.string :category
      t.integer :difficulty
      t.string :file
      t.integer :teacher_id

      t.timestamps
    end
  end
end
