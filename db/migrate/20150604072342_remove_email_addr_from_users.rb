#Created by Cornelius Donley
#Removed redundant email attribute from user table
#Devise requires 'email' in the login table

class RemoveEmailAddrFromUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.remove :email_addr
    end
  end
end
