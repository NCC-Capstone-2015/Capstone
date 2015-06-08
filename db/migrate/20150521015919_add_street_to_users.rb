# Created by Christian Winger
# Street missing from initial table create
class AddStreetToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :street
    end
  end
end
