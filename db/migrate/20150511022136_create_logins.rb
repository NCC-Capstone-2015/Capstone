class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :username, :password, :first_name, :last_name, :middle_initial
      t.integer :type

      t.timestamps null: false
    end
  end
end
