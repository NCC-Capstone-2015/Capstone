# Created by Christian Winger
# Initial table create

class CreateSavedLists < ActiveRecord::Migration
  def change
    create_table :saved_lists do |t|
      t.integer :login_id
      t.string :list_name
      t.string :date_saved
      t.references :login, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
