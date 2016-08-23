class CreateQuests < ActiveRecord::Migration[5.0]
  def change
    create_table :quests do |t|
      t.string :status
      t.references :challenge, foreign_key: true

      t.timestamps
    end
  end
end
