class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.references :login, index: true
      t.string :survey_name, :survey_description
      t.date :date_created
      t.integer :status

      t.timestamps null: false
    end
  end
end
