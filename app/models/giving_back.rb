# Associations implemented by Cornelius Donley

class GivingBack < ActiveRecord::Base
  belongs_to :user
  has_one :company_info
end
