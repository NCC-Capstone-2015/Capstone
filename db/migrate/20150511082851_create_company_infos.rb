class CreateCompanyInfos < ActiveRecord::Migration
  def change
    create_table :company_infos do |t|
      t.integer :company_id
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :country_code
      t.string :area_code
      t.string :prefix
      t.string :suffix
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
