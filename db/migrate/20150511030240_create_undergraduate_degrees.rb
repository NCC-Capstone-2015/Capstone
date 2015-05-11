class CreateUndergraduateDegrees < ActiveRecord::Migration
  def change
    create_table :undergraduate_degrees do |t|
      t.references :user, index: true
      t.references :college, index: true
      t.references :degree, index: true
      t.date :graduation_date

      t.timestamps null: false
    end
  end
end
