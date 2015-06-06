# Created by Christian Winger
# Initial table create

class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.references :company_info, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
