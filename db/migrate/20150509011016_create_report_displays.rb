class CreateReportDisplays < ActiveRecord::Migration
  def change
    create_table :report_displays do |t|

      t.timestamps null: false
    end
  end
end
