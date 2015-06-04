# Associations implemented by Cornelius Donley

class SavedListUser < ActiveRecord::Base
  belongs_to :saved_list
  belongs_to :user
end
