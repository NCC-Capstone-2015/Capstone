class CreateUserSurveyResponses < ActiveRecord::Migration
  def change
    create_table :user_survey_responses do |t|
      t.references :user_survey, index: true
      t.references :survey_question, index: true
      t.references :survey_question_option, index: true
      t.references :user_survey_option_choice, index: true
      t.text :response_text

      t.timestamps null: false
    end
  end
end
