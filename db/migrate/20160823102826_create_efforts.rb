class CreateEfforts < ActiveRecord::Migration[5.0]
  def change
    create_table :efforts do |t|
      t.string :status
      t.text :content
      t.references :quest, foreign_key: true

      t.timestamps
    end
  end
end
