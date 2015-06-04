#Created by Cornelius Donley

class RemoveNccidFromUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :nccid
    end
  end
end
