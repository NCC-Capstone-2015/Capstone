# Created by Christian Winger
# Initial table create

class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :username
      t.string :passoword
      t.string :first_name
      t.string :last_name
      t.integer :login_type
      t.timestamp :last_login_timestamp

      t.timestamps null: false
    end
  end
end
