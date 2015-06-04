# Created by Cornelius Donley
# Combined date fields into single column with type date
# Changed salary to type integer

class ChangeUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :birth_month, :birth_year, :birth_day, :salary_range, :start_date, :end_date
      t.date :birth_day, :start_date, :end_date
      t.integer :salary_range
    end
  end
end
