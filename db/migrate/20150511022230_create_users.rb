class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :login, index: true
      t.string :email_addr, :street, :city, :state, :zip
      t.string :spouse_first_name, :spouse_last_name, :spouse_middle_initial, :number_children
      t.string :birth_month, :birth_day, :birth_year, :ethnicity, :status
      t.boolean :general_opt_in, :email_opt_in, :phone_opt_in, :badges_opt_in
      t.references :company, index: true
      t.integer :salary_range
      t.string :job_title
      t.date :start_date, :end_date

      t.timestamps null: false
    end
  end
end
