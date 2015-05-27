class CreateBasicSearches < ActiveRecord::Migration
  def change
    create_table :basic_searches do |t|

      t.timestamps null: false
    end
  end
end
