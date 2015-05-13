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
