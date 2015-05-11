class CreateGraduateDegrees < ActiveRecord::Migration
  def change
    create_table :graduate_degrees do |t|
      t.integer :user_id
      t.integer :college_id
      t.integer :degree_id
      t.string :graduation_date
      t.integer :status
      t.references :user, index: true, foreign_key: true
      t.references :college, index: true, foreign_key: true
      t.references :degree, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
