class CreateCompanyInfos < ActiveRecord::Migration
  def change
    create_table :company_infos do |t|
      t.references :company, index: true
      t.string :street, :city, :state, :zip, :country_code, :area_code, :prefix, :suffix

      t.timestamps null: false
    end
  end
end
