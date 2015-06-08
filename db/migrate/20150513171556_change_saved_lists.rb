# Created by Cornelius Donley
# Changed date saved column to type date

class ChangeSavedLists < ActiveRecord::Migration
  def change
    change_table :saved_lists do |t|
      t.remove :date_saved
      t.date :date_saved
    end
  end
end
