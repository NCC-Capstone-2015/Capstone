class ChangeGivingBack < ActiveRecord::Migration
  def change
    change_table :giving_backs do |t|
      t.remove :description, :requirements
      t.text :description, :requirements
    end
  end
end
