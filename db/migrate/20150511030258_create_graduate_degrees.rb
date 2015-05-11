class CreateGraduateDegrees < ActiveRecord::Migration
  def change
    create_table :graduate_degrees do |t|
      t.references :user, index: true
      t.references :college, index: true
      t.references :degree, index: true
      t.date :graduation_date
      t.integer :status

      t.timestamps null: false
    end
  end
end
