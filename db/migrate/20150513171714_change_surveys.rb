# Created by Cornelius Donley
# Changed text response from type string to type text
# Changed date column to type date

class ChangeSurveys < ActiveRecord::Migration
  def change
    change_table :surveys do |t|
      t.remove :user_id, :survey_description, :date_created
      t.integer :user_id
      t.text :survey_description
      t.date :date_created
    end
  end
end
