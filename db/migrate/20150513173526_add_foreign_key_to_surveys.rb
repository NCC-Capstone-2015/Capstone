class AddForeignKeyToSurveys < ActiveRecord::Migration
  def change
    change_table :surveys do |t|
      t.remove :user_id
      t.references :user, index: true, foreign_key: true
    end
  end
end
