# Associations implemented by Cornelius Donley

class UserPhone < ActiveRecord::Base
  belongs_to :user
end
