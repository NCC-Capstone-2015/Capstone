class CreateAccountLogins < ActiveRecord::Migration
  def change
    create_table :account_logins do |t|

      t.timestamps null: false
    end
  end
end
