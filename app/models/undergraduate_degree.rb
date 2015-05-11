class UndergraduateDegree < ActiveRecord::Base
  belongs_to :user
  belongs_to :college
  belongs_to :degree
end
