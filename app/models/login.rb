class Login < ActiveRecord::Base
  has_many :saved_lists
  has_one :user
  has_many :surveys
end
