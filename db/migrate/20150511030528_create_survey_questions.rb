class CreateSurveyQuestions < ActiveRecord::Migration
  def change
    create_table :survey_questions do |t|
      t.references :survey, index: true
      t.text :text
      t.integer :type, :display_order
      t.boolean :required

      t.timestamps null: false
    end
  end
end
