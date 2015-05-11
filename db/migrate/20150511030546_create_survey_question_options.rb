class CreateSurveyQuestionOptions < ActiveRecord::Migration
  def change
    create_table :survey_question_options do |t|
      t.references :survey_question, index: true
      t.text :text
      t.integer display_order

      t.timestamps null: false
    end
  end
end
