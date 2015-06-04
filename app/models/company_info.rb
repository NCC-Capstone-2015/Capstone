class CompanyInfo < ActiveRecord::Base
  has_one :company
  belongs_to :giving_back
  has_one :user
end
