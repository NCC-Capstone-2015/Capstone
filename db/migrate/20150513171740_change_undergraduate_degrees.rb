# Created by Cornelius Donley
# Changed graduation date to type date
class ChangeUndergraduateDegrees < ActiveRecord::Migration
  def change
    change_table :undergraduate_degrees do |t|
      t.remove :graduation_date
      t.date :graduation_date
    end
  end
end
