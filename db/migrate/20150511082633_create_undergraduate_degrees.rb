class CreateUndergraduateDegrees < ActiveRecord::Migration
  def change
    create_table :undergraduate_degrees do |t|
      t.integer :user_id
      t.integer :college_id
      t.integer :degree_id
      t.string :graduation_date
      t.references :user, index: true, foreign_key: true
      t.references :college, index: true, foreign_key: true
      t.references :degree, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
