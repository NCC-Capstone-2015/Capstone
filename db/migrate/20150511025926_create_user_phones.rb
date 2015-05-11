class CreateUserPhones < ActiveRecord::Migration
  def change
    create_table :user_phones do |t|
      t.references :user, index: true
      t.string :country_code, :area_code, :prefix, :suffix, :extension
      t.integer :type

      t.timestamps null: false
    end
  end
end
