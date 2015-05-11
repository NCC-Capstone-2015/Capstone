class CreateUserSurveys < ActiveRecord::Migration
  def change
    create_table :user_surveys do |t|
      t.references :user, index: true
      t.references :survey, index: true
      t.date :date_completed
      t.boolean :anonymous

      t.timestamps null: false
    end
  end
end
