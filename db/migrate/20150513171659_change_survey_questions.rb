class ChangeSurveyQuestions < ActiveRecord::Migration
  def change
    change_table :survey_questions do |t|
      t.remove :text
      t.text :text
    end
  end
end
