# Created by Christian Winger
# Initial table create

class CreateUserSurveys < ActiveRecord::Migration
  def change
    create_table :user_surveys do |t|
      t.integer :user_id
      t.integer :survey_id
      t.string :date_completed
      t.boolean :anonymous
      t.references :user, index: true, foreign_key: true
      t.references :survey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
