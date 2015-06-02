class Company < ActiveRecord::Base
  has_many :company_info
  has_many :giving_backs
  has_many :users
end
