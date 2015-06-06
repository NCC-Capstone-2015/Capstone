# Created by Cornelius Donley
# NCCID associated with a User account deemed a security issue

class RemoveNccidFromUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :nccid
    end
  end
end
