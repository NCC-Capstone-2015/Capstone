class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :user_id
      t.string :login_id
      t.string :survey_name
      t.string :survey_description
      t.string :date_created
      t.integer :status
      t.references :login, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
