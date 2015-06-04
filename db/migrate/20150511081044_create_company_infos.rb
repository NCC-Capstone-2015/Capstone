class CreateCompanyInfos < ActiveRecord::Migration
  def change
    create_table :company_infos do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :country_code
      t.string :area_code
      t.string :prefix
      t.string :suffix

      t.timestamps null: false
    end
  end
end
