# Created by Cornelius Donley
# Changed text response from type string to type text

class ChangeSurveyQuestions < ActiveRecord::Migration
  def change
    change_table :survey_questions do |t|
      t.remove :text
      t.text :text
    end
  end
end
