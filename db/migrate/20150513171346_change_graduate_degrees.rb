class ChangeGraduateDegrees < ActiveRecord::Migration
  def change
    change_table :graduate_degrees do |t|
      t.remove :graduation_date
      t.date :graduation_date
    end
  end
end