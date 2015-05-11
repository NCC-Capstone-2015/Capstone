class CreateGivingBacks < ActiveRecord::Migration
  def change
    create_table :giving_backs do |t|
      t.references :user, index: true
      t.string :subject, :position, :description, :requirements, :approved, :completed
      t.integer :type
      t.string :contact_first_name, :contact_last_name, :contact_email
      t.references :company, index: true

      t.timestamps null: false
    end
  end
end
