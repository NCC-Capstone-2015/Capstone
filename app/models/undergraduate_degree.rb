class UndergraduateDegree < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :college, dependent: :destroy
  belongs_to :degree, dependent: :destroy
end
