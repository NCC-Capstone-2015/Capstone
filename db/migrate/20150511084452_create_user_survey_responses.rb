# Created by Christian Winger
# Initial table create

class CreateUserSurveyResponses < ActiveRecord::Migration
  def change
    create_table :user_survey_responses do |t|
      t.integer :user_survey_id
      t.integer :survey_question_id
      t.integer :survey_question_option_id
      t.integer :survey_question_option_choice_id
      t.string :response_text
      t.references :user_survey, index: true, foreign_key: true
      t.references :survey_question, index: true, foreign_key: true
      t.references :survey_question_option, index: true, foreign_key: true
      t.references :survey_question_option_choices, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
