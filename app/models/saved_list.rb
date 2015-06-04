class SavedList < ActiveRecord::Base
  belongs_to :login, dependent: :destroy
  has_many :users, through: :saved_list_users
end
