class AddExtraFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :photo, :string
    add_column :users, :school, :string
    add_column :users, :experience, :text
    add_column :users, :interests, :text
    add_column :users, :teacher, :boolean, default: :false
  end
end
