# Created by Cornelius Donley
# Fixed spelling mistake

class AddPasswordToLogin < ActiveRecord::Migration
  def change
    change_table :logins do |t|
      t.remove :passoword
      t.string :password
    end
  end
end
