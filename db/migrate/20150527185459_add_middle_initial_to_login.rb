class AddMiddleInitialToLogin < ActiveRecord::Migration
  def change
    change_table :logins do |t|
      t.string :middle_initial
    end
  end
end
