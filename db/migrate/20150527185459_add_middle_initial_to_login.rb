# Created by Cornelius Donley
# Middle initial missing from initial table create

class AddMiddleInitialToLogin < ActiveRecord::Migration
  def change
    change_table :logins do |t|
      t.string :middle_initial
    end
  end
end
