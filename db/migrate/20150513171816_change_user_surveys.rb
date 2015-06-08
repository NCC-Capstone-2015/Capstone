# Created by Cornelius Donley
# Changed text response from type string to type text
class ChangeUserSurveys < ActiveRecord::Migration
  def change
    change_table :user_survey_responses do |t|
      t.remove :response_text, :survey_question_option_choices_id
      t.text :response_text
    end
  end
end
