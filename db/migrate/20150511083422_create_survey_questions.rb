class CreateSurveyQuestions < ActiveRecord::Migration
  def change
    create_table :survey_questions do |t|
      t.integer :survey_id
      t.integer :survey_question_type
      t.integer :display_order
      t.string :text
      t.boolean :required
      t.references :survey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
