# Created by Christian Winger
# Initial table create

class CreateSurveyQuestionOptions < ActiveRecord::Migration
  def change
    create_table :survey_question_options do |t|
      t.integer :survey_question_id
      t.integer :display_order
      t.string :text
      t.references :survey_question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
