class CreateAdminSurveys < ActiveRecord::Migration
  def change
    create_table :admin_surveys do |t|

      t.timestamps null: false
    end
  end
end
