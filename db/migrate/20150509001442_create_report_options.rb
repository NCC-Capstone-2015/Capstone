class CreateReportOptions < ActiveRecord::Migration
  def change
    create_table :report_options do |t|

      t.timestamps null: false
    end
  end
end
