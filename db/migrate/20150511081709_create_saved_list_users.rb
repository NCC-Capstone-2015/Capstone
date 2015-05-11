class CreateSavedListUsers < ActiveRecord::Migration
  def change
    create_table :saved_list_users do |t|
      t.integer :saved_list_id
      t.integer :user_id
      t.references :saved_list, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
