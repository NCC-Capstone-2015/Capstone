# Created by Christian Winger
# Initial table create

class CreateUserPhones < ActiveRecord::Migration
  def change
    create_table :user_phones do |t|
      t.integer :user_id
      t.string :country_code
      t.string :area_code
      t.string :prefix
      t.string :suffix
      t.string :extension
      t.integer :user_phone_type
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
