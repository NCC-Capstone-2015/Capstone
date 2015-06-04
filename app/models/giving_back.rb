class GivingBack < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_one :company_info
end
