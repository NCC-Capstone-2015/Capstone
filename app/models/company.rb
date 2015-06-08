# Associations implemented by Cornelius Donley

class Company < ActiveRecord::Base
  has_many :company_infos
end
