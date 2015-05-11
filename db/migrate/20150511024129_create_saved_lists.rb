class CreateSavedLists < ActiveRecord::Migration
  def change
    create_table :saved_lists do |t|
      t.references :login, index: true
      t.string :list_name
      t.date :date_saved

      t.timestamps null: false
    end
  end
end
