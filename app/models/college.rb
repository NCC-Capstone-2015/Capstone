class College < ActiveRecord::Base
  has_many :graduate_degrees
  has_many :undergraduate_degrees
end
