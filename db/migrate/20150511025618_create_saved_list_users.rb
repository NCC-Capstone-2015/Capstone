class CreateSavedListUsers < ActiveRecord::Migration
  def change
    create_table :saved_list_users do |t|
      t.references :saved_list, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
