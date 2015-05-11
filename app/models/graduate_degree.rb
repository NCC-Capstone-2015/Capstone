class GraduateDegree < ActiveRecord::Base
  belongs_to :user
  belongs_to :college
  belongs_to :degree
end
