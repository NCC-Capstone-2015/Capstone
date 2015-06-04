class CompanyInfo < ActiveRecord::Base
  has_one :company
  belongs_to :giving_back
  belongs_to :user
end
