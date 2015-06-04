class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email_addr
      t.string :city
      t.string :state
      t.string :zip
      t.string :spouse_first_name
      t.string :spouse_middle_initial
      t.string :spouse_last_name
      t.integer :number_children
      t.string :birth_month
      t.string :birth_day
      t.integer :birth_year
      t.string :ethnicity
      t.integer :general_opt_in
      t.integer :email_opt_in
      t.integer :phone_opt_in
      t.integer :badges_opt_in
      t.integer :status
      t.string :salary_range
      t.string :job_title
      t.string :start_date
      t.string :end_date
      t.references :login, index: true, foreign_key: true
      t.references :company_info, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
