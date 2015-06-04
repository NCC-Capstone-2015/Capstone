class CreateGivingBacks < ActiveRecord::Migration
  def change
    create_table :giving_backs do |t|
      t.string :subject
      t.string :position
      t.string :description
      t.string :requirements
      t.boolean :approved
      t.boolean :completed
      t.integer :giving_back_type
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :contact_email
      t.references :user, index: true, foreign_key: true
      t.references :company_info, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
