class CompanyInfo < ActiveRecord::Base
  has_one :company
  belongs_to :giving_back, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
