# Created by Cornelius Donley
# Changed text response from type string to type text

class ChangeSurveyQuestionOptions < ActiveRecord::Migration
  def change
    change_table :survey_question_options do |t|
      t.remove :text
      t.text :text
    end
  end
end
