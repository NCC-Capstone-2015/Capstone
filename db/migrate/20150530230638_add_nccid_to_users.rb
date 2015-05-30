class AddNccidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nccid, :string
    add_column :users, :program, :string
  end
end
